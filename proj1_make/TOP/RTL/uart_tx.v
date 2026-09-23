// =============================================================================
// Module      : uart_tx
// Description : UART transmit FSM (reads data from the TX FIFO and shifts it
//                out serially)
//
// FSM state transitions : IDLE -> START -> DATA -> PARITY(optional) -> STOP -> IDLE
// State encoding         : one-hot (5 states)
//
// Data frame   : Start(1) + Data(5~8, configurable) + Parity(none/odd/even, optional) + Stop(1~2)
// Oversampling : 16 baud_tick_x16 pulses = 1 bit time (os_cnt16 : 0~15).
//                Each state advances to the next state/value the moment
//                os_cnt16 reaches 15 and baud_tick_x16 fires (bit_boundary).
//
// Reset policy : asynchronous assert, synchronous deassert
// =============================================================================
module uart_tx (
    input  wire        clk,
    input  wire        rst_n,          // asynchronous assert, synchronous deassert

    input  wire         tx_en,          // CTRL.TX_EN
    input  wire         baud_tick_x16,  // 16x oversampling tick from baud_gen

    input  wire [1:0]   dbits_sel,      // 00=8bit,01=7bit,10=6bit,11=5bit
    input  wire [1:0]   parity_sel,     // 00=none,01=odd,10=even,11=reserved(=none)
    input  wire         stop_sel,       // 0=1 stop bit, 1=2 stop bit

    // TX FIFO interface
    output reg          fifo_rd_en,
    input  wire [7:0]   fifo_rd_data,
    input  wire         fifo_empty,

    output reg          txd,
    output wire         tx_busy,
    output reg          tx_done_pulse    // 1-clock pulse when one byte has finished transmitting (for interrupt use)
);

    // ---------------------------------------------------------------
    // one-hot state encoding
    // ---------------------------------------------------------------
    localparam ST_IDLE   = 5'b00001;
    localparam ST_START  = 5'b00010;
    localparam ST_DATA   = 5'b00100;
    localparam ST_PARITY = 5'b01000;
    localparam ST_STOP   = 5'b10000;

    reg [4:0] state, state_n;

    reg [3:0]  os_cnt16;      // 0~15 oversampling counter (1 bit time = 16 ticks)
    reg [2:0]  bit_cnt;       // number of data bits transmitted so far
    reg [3:0]  nbits;         // actual number of data bits to transmit (5~8; needs 4 bits, since 8 overflows 3 bits)
    reg [7:0]  shift_reg;
    reg        parity_bit;
    reg        parity_en;
    reg        stop_done;     // whether the first stop bit has already been sent (2-stop mode)

    assign tx_busy = (state != ST_IDLE);

    wire bit_boundary = baud_tick_x16 && (os_cnt16 == 4'd15); // end of the current bit time

    // Decode the actual number of data bits
    always @(*) begin
        case (dbits_sel)
            2'b00: nbits = 4'd8;
            2'b01: nbits = 4'd7;
            2'b10: nbits = 4'd6;
            2'b11: nbits = 4'd5;
            default: nbits = 4'd8;
        endcase
    end

    always @(*) parity_en = (parity_sel == 2'b01) || (parity_sel == 2'b10);

    // ---------------------------------------------------------------
    // State register
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= ST_IDLE;
        else if (!tx_en)
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
                if (!fifo_empty)
                    state_n = ST_START;
            end
            ST_START: begin
                if (bit_boundary)
                    state_n = ST_DATA;
            end
            ST_DATA: begin
                if (bit_boundary && bit_cnt == nbits-1'b1)
                    state_n = parity_en ? ST_PARITY : ST_STOP;
            end
            ST_PARITY: begin
                if (bit_boundary)
                    state_n = ST_STOP;
            end
            ST_STOP: begin
                if (bit_boundary && (!stop_sel || stop_done))
                    state_n = ST_IDLE;
            end
            default: state_n = ST_IDLE;
        endcase
    end

    // ---------------------------------------------------------------
    // os_cnt16 : reset to 0 on entering a new state, +1 on every
    //            baud_tick_x16 (wraps 0~15)
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            os_cnt16 <= 4'd0;
        end else if (!tx_en || state != state_n) begin
            os_cnt16 <= 4'd0;          // reset the counter on a state transition
        end else if (baud_tick_x16) begin
            os_cnt16 <= (os_cnt16 == 4'd15) ? 4'd0 : os_cnt16 + 1'b1;
        end
    end

    // ---------------------------------------------------------------
    // shift_reg / bit_cnt / parity / stop_done / txd / fifo_rd_en logic
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            txd           <= 1'b1;   // idle line = high
            shift_reg     <= 8'hFF;
            bit_cnt       <= 3'd0;
            parity_bit    <= 1'b0;
            stop_done     <= 1'b0;
            fifo_rd_en    <= 1'b0;
            tx_done_pulse <= 1'b0;
        end else if (!tx_en) begin
            txd           <= 1'b1;
            fifo_rd_en    <= 1'b0;
            tx_done_pulse <= 1'b0;
        end else begin
            fifo_rd_en    <= 1'b0;
            tx_done_pulse <= 1'b0;

            case (state)
                ST_IDLE: begin
                    txd <= 1'b1;
                    if (!fifo_empty && state_n == ST_START) begin
                        fifo_rd_en <= 1'b1;   // FIFO pop (the FIFO is combinational-read, so
                        shift_reg  <= fifo_rd_data; // this cycle's fifo_rd_data is latched directly)
                        bit_cnt    <= 3'd0;
                        parity_bit <= 1'b0;
                        stop_done  <= 1'b0;
                    end
                end

                ST_START: begin
                    txd <= 1'b0;              // start bit = 0 (shift_reg was already latched on the IDLE->START transition)
                end

                ST_DATA: begin
                    txd <= shift_reg[0];
                    if (bit_boundary) begin
                        shift_reg  <= {1'b0, shift_reg[7:1]};
                        parity_bit <= parity_bit ^ shift_reg[0];
                        bit_cnt    <= (bit_cnt == nbits-1'b1) ? 3'd0 : bit_cnt + 1'b1;
                    end
                end

                ST_PARITY: begin
                    // parity_sel : 01=odd (make the total number of 1s odd), 10=even (make it even)
                    txd <= (parity_sel == 2'b01) ? ~parity_bit : parity_bit;
                end

                ST_STOP: begin
                    txd <= 1'b1;              // stop bit = 1
                    if (bit_boundary) begin
                        if (!stop_sel || stop_done) begin
                            tx_done_pulse <= 1'b1;
                            stop_done <= 1'b0;
                        end else begin
                            stop_done <= 1'b1;
                        end
                    end
                end

                default: txd <= 1'b1;
            endcase
        end
    end

endmodule
