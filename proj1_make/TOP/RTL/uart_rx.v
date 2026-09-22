// =============================================================================
// Module      : uart_rx
// Description : UART receive FSM (receives the serial RXD input and writes
//                completed bytes into the RX FIFO)
//
// FSM state transitions : IDLE -> START(bit detect/verify) -> DATA(16x oversample,
//                          center sampling) -> PARITY(optional) -> STOP(verify) -> IDLE
// State encoding         : one-hot (5 states)
//
// Operation :
//  1) In IDLE, a falling edge (1->0) on rxd_sync enters START; os_cnt16 starts
//     counting from 0.
//  2) When os_cnt16 reaches 7 (= center of the start bit, the 8th tick), sample:
//     - if the value is 0, it is a valid start bit -> transition to DATA
//       (os_cnt16 is re-aligned to 0 at this point)
//     - if the value is 1, treat it as a glitch -> return to IDLE
//  3) In DATA/PARITY/STOP, sample when os_cnt16 reaches 15 (= center of each bit)
//  4) If the stop bit is not 1, flag a framing error; on a parity mismatch,
//     flag a parity error
//  5) On reception complete, attempt to write into the RX FIFO; if the FIFO
//     is full, flag an overrun error (data lost)
//
// Reset policy        : asynchronous assert, synchronous deassert
// Input synchronization: 2-stage FF synchronizer to protect against
//                        metastability on the asynchronous input
// =============================================================================
module uart_rx (
    input  wire        clk,
    input  wire        rst_n,          // asynchronous assert, synchronous deassert

    input  wire         rx_en,          // CTRL.RX_EN
    input  wire         baud_tick_x16,  // 16x oversampling tick from baud_gen
    input  wire         rxd,            // asynchronous serial input

    input  wire [1:0]   dbits_sel,      // 00=8bit,01=7bit,10=6bit,11=5bit
    input  wire [1:0]   parity_sel,     // 00=none,01=odd,10=even,11=reserved(=none)
    input  wire         stop_sel,       // 0=1 stop bit, 1=2 stop bit

    // RX FIFO interface
    output reg          fifo_wr_en,
    output reg  [7:0]   fifo_wr_data,
    input  wire         fifo_full,

    output reg          rx_done_pulse,   // 1-clock pulse when one byte has been received (FIFO write)
    output reg          framing_err,     // stop-bit error (1-clock pulse)
    output reg          parity_err,      // parity error (1-clock pulse)
    output reg          overrun_err      // reception completed while the FIFO was full (1-clock pulse)
);

    // ---------------------------------------------------------------
    // 2-stage synchronizer (metastability protection)
    // ---------------------------------------------------------------
    reg rxd_meta, rxd_sync, rxd_sync_d;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rxd_meta   <= 1'b1;
            rxd_sync   <= 1'b1;
            rxd_sync_d <= 1'b1;
        end else begin
            rxd_meta   <= rxd;
            rxd_sync   <= rxd_meta;
            rxd_sync_d <= rxd_sync;
        end
    end

    wire falling_edge = rxd_sync_d && !rxd_sync; // detect a 1 -> 0 transition (idle -> start candidate)

    // ---------------------------------------------------------------
    // one-hot state encoding
    // ---------------------------------------------------------------
    localparam ST_IDLE   = 5'b00001;
    localparam ST_START  = 5'b00010;
    localparam ST_DATA   = 5'b00100;
    localparam ST_PARITY = 5'b01000;
    localparam ST_STOP   = 5'b10000;

    reg [4:0] state, state_n;

    reg [3:0] os_cnt16;     // 0~15 oversampling counter
    reg [2:0] bit_cnt;
    reg [2:0] nbits;
    reg [7:0] shift_reg;
    reg       parity_calc;
    reg       stop_done;

    // Decode the actual number of data bits
    always @(*) begin
        case (dbits_sel)
            2'b00: nbits = 3'd8;
            2'b01: nbits = 3'd7;
            2'b10: nbits = 3'd6;
            2'b11: nbits = 3'd5;
            default: nbits = 3'd8;
        endcase
    end

    wire parity_en = (parity_sel == 2'b01) || (parity_sel == 2'b10);

    // ST_START : when baud_tick_x16 fires with os_cnt16==7 = the start-bit center sample point
    wire start_center = baud_tick_x16 && (os_cnt16 == 4'd7);
    // ST_DATA/PARITY/STOP : when baud_tick_x16 fires with os_cnt16==15 = the center of each bit
    wire bit_center    = baud_tick_x16 && (os_cnt16 == 4'd15);

    // ---------------------------------------------------------------
    // State register
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= ST_IDLE;
        else if (!rx_en)
            state <= ST_IDLE;
        else
            state <= state_n;
    end

    // ---------------------------------------------------------------
    // Next-state logic (combinational)
    // ---------------------------------------------------------------
    always @(*) begin
        state_n = state;
        case (state)
            ST_IDLE: begin
                if (falling_edge)
                    state_n = ST_START;
            end
            ST_START: begin
                if (start_center)
                    state_n = rxd_sync ? ST_IDLE : ST_DATA; // if the center sample is 1, it's a glitch -> IDLE
            end
            ST_DATA: begin
                if (bit_center && bit_cnt == nbits-1'b1)
                    state_n = parity_en ? ST_PARITY : ST_STOP;
            end
            ST_PARITY: begin
                if (bit_center)
                    state_n = ST_STOP;
            end
            ST_STOP: begin
                if (bit_center && (!stop_sel || stop_done))
                    state_n = ST_IDLE;
            end
            default: state_n = ST_IDLE;
        endcase
    end

    // ---------------------------------------------------------------
    // os_cnt16 : reset to 0 on entering a new state, +1 on every
    //            baud_tick_x16 (wraps 0~15)
    //  - starts from 0 on IDLE->START entry
    //  - on START->DATA entry, re-aligned to 0 right at start_center (os_cnt16==7)
    //    -> the next bit_center (=os_cnt16==15) then lands exactly 16 ticks
    //       later, i.e. at the center of the first data bit
    //  - also reset to 0 on any other state transition
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            os_cnt16 <= 4'd0;
        end else if (!rx_en) begin
            os_cnt16 <= 4'd0;
        end else if (state != state_n) begin
            os_cnt16 <= 4'd0;                    // reset/realign the counter on every state transition
        end else if (baud_tick_x16) begin
            os_cnt16 <= (os_cnt16 == 4'd15) ? 4'd0 : os_cnt16 + 1'b1;
        end
    end

    // ---------------------------------------------------------------
    // shift_reg / bit_cnt / parity / output logic
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg     <= 8'h00;
            bit_cnt       <= 3'd0;
            parity_calc   <= 1'b0;
            stop_done     <= 1'b0;
            fifo_wr_en    <= 1'b0;
            fifo_wr_data  <= 8'h00;
            rx_done_pulse <= 1'b0;
            framing_err   <= 1'b0;
            parity_err    <= 1'b0;
            overrun_err   <= 1'b0;
        end else if (!rx_en) begin
            fifo_wr_en    <= 1'b0;
            rx_done_pulse <= 1'b0;
            framing_err   <= 1'b0;
            parity_err    <= 1'b0;
            overrun_err   <= 1'b0;
        end else begin
            fifo_wr_en    <= 1'b0;
            rx_done_pulse <= 1'b0;
            framing_err   <= 1'b0;
            parity_err    <= 1'b0;
            overrun_err   <= 1'b0;

            case (state)
                ST_IDLE: begin
                    if (falling_edge) begin
                        bit_cnt     <= 3'd0;
                        parity_calc <= 1'b0;
                        stop_done   <= 1'b0;
                        shift_reg   <= 8'h00;
                    end
                end

                ST_START: begin
                    // Valid/glitch decision is handled by the state_n combinational logic;
                    // no extra action needed here.
                end

                ST_DATA: begin
                    if (bit_center) begin
                        shift_reg   <= {rxd_sync, shift_reg[7:1]};
                        parity_calc <= parity_calc ^ rxd_sync;
                        bit_cnt     <= (bit_cnt == nbits-1'b1) ? 3'd0 : bit_cnt + 1'b1;
                    end
                end

                ST_PARITY: begin
                    if (bit_center) begin
                        // parity_sel : 01=odd, 10=even
                        if (parity_sel == 2'b01)
                            parity_err <= (parity_calc == rxd_sync); // error if it doesn't match the odd expectation
                        else
                            parity_err <= (parity_calc != rxd_sync); // error if it doesn't match the even expectation
                    end
                end

                ST_STOP: begin
                    if (bit_center) begin
                        if (!rxd_sync)
                            framing_err <= 1'b1;   // the stop bit must be 1

                        if (!stop_sel || stop_done) begin
                            // shift_reg is only valid for nbits bits (right-aligned, upper bits are 0)
                            fifo_wr_data <= shift_reg >> (8 - nbits);
                            if (fifo_full) begin
                                overrun_err <= 1'b1;   // FIFO full: data is lost
                            end else begin
                                fifo_wr_en    <= 1'b1;
                                rx_done_pulse <= 1'b1;
                            end
                            stop_done <= 1'b0;
                        end else begin
                            stop_done <= 1'b1;
                        end
                    end
                end

                default: ;
            endcase
        end
    end

endmodule
