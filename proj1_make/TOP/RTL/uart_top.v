// =============================================================================
// Module      : uart_top
// Description : UART top module for a Cortex-M0 (APB) system.
//                Integrates baud_gen + TX/RX FIFO(sync_fifo) + uart_tx +
//                uart_rx + the APB register file + interrupt logic.
//
// System clock    : e.g. 50MHz (adjust with the SYS_CLK_FREQ used to derive
//                    BAUDDIV values)
// Bus interface    : APB (PADDR/PWDATA/PRDATA/PSEL/PENABLE/PWRITE), no wait state
// Reset policy     : asynchronous assert, synchronous deassert (presetn is
//                    re-synchronized through a 2-stage FF and the resulting
//                    "synchronous deassert" reset is distributed to every
//                    internal block)
//
// -----------------------------------------------------------------------------
// Register map (byte offset, 32-bit APB, word-aligned)
// -----------------------------------------------------------------------------
//  0x00 RXDATA  [R]   [7:0]  received data (reading it pops the RX FIFO)
//  0x04 TXDATA  [W]   [7:0]  data to transmit (writing it pushes the TX FIFO)
//  0x08 CTRL    [R/W]
//         [0]    UART_EN     overall enable (also enables baud_gen)
//         [1]    TX_EN       transmit-path enable
//         [2]    RX_EN       receive-path enable
//         [4:3]  PARITY_SEL  00=None, 01=Odd, 10=Even
//         [5]    STOP_SEL    0=1 stop bit, 1=2 stop bits
//         [7:6]  DBITS_SEL   00=8bit, 01=7bit, 10=6bit, 11=5bit
//         [8]    TX_IE       TX-done interrupt enable
//         [9]    RX_IE       RX-done interrupt enable
//         [10]   ERR_IE      Framing/Parity/Overrun error interrupt enable
//  0x0C STATUS  [R, with W1C on the upper flag bits only]
//         [0]    TX_BUSY     (RO) transmit in progress
//         [1]    TX_FULL     (RO) TX FIFO full
//         [2]    TX_EMPTY    (RO) TX FIFO empty
//         [3]    RX_FULL     (RO) RX FIFO full
//         [4]    RX_EMPTY    (RO) RX FIFO empty
//         [5]    RX_VALID    (RO) RX FIFO not empty (= ~RX_EMPTY)
//         [8]    TX_DONE     (W1C) latched flag: one byte finished transmitting (interrupt flag)
//         [9]    RX_DONE     (W1C) latched flag: one byte finished receiving (interrupt flag)
//         [10]   FRAMING_ERR (W1C) latched stop-bit error
//         [11]   PARITY_ERR  (W1C) latched parity error
//         [12]   OVERRUN_ERR (W1C) latched: received while the RX FIFO was full (data lost)
//  0x10 BAUDDIV [R/W]  [15:0] = (SYS_CLK_FREQ / (16 * BAUD)) - 1
// -----------------------------------------------------------------------------
module uart_top #(
    parameter TX_FIFO_DEPTH = 8,
    parameter RX_FIFO_DEPTH = 8
)(
    // APB interface
    input  wire         pclk,
    input  wire         presetn,     // asynchronous assert, re-synchronized to a synchronous deassert internally
    input  wire [7:0]   paddr,
    input  wire         psel,
    input  wire         penable,
    input  wire         pwrite,
    input  wire [31:0]  pwdata,
    output reg  [31:0]  prdata,
    output wire         pready,
    output wire         pslverr,

    // Serial pins
    output wire         txd,
    input  wire         rxd,

    // Status / interrupt
    output wire         tx_busy,
    output wire         rx_valid,
    output wire         rx_error,
    output wire         irq
);

    // ---------------------------------------------------------------
    // Reset synchronizer : asynchronous assert, synchronous deassert
    // ---------------------------------------------------------------
    reg rst_meta, rst_n;
    always @(posedge pclk or negedge presetn) begin
        if (!presetn) begin
            rst_meta <= 1'b0;
            rst_n    <= 1'b0;
        end else begin
            rst_meta <= 1'b1;
            rst_n    <= rst_meta;
        end
    end

    wire clk = pclk;

    // ---------------------------------------------------------------
    // APB decode (no wait-state, every transfer completes in 1 clock)
    // ---------------------------------------------------------------
    wire apb_write = psel && penable && pwrite;
    wire apb_read  = psel && penable && !pwrite;
    wire [7:0] addr = paddr;

    assign pready  = 1'b1;
    assign pslverr = 1'b0;

    // ---------------------------------------------------------------
    // CTRL register
    // ---------------------------------------------------------------
    reg        uart_en, tx_en, rx_en;
    reg [1:0]  parity_sel;
    reg        stop_sel;
    reg [1:0]  dbits_sel;
    reg        tx_ie, rx_ie, err_ie;

    // ---------------------------------------------------------------
    // BAUDDIV register
    // ---------------------------------------------------------------
    reg [15:0] bauddiv;

    // ---------------------------------------------------------------
    // STATUS interrupt flags (W1C latches)
    // ---------------------------------------------------------------
    reg tx_done_flag, rx_done_flag, framing_err_flag, parity_err_flag, overrun_err_flag;

    // ---------------------------------------------------------------
    // baud_gen
    // ---------------------------------------------------------------
    wire baud_tick_x16;
    baud_gen #(.DIV_WIDTH(16)) u_baud_gen (
        .clk           (clk),
        .rst_n         (rst_n),
        .en            (uart_en),
        .bauddiv       (bauddiv),
        .baud_tick_x16 (baud_tick_x16)
    );

    // ---------------------------------------------------------------
    // TX FIFO
    // ---------------------------------------------------------------
    wire       tx_fifo_wr_en   = apb_write && (addr[7:0] == 8'h04) && !tx_fifo_full;
    wire [7:0] tx_fifo_wr_data = pwdata[7:0];
    wire       tx_fifo_rd_en;
    wire [7:0] tx_fifo_rd_data;
    wire       tx_fifo_full, tx_fifo_empty;

    sync_fifo #(.WIDTH(8), .DEPTH(TX_FIFO_DEPTH), .ADDR_WIDTH(3)) u_tx_fifo (
        .clk     (clk),
        .rst_n   (rst_n),
        .wr_en   (tx_fifo_wr_en),
        .wr_data (tx_fifo_wr_data),
        .rd_en   (tx_fifo_rd_en),
        .rd_data (tx_fifo_rd_data),
        .full    (tx_fifo_full),
        .empty   (tx_fifo_empty)
    );

    // ---------------------------------------------------------------
    // RX FIFO
    // ---------------------------------------------------------------
    wire       rx_fifo_wr_en;
    wire [7:0] rx_fifo_wr_data;
    wire       rx_fifo_rd_en = apb_read && (addr[7:0] == 8'h00) && !rx_fifo_empty;
    wire [7:0] rx_fifo_rd_data;
    wire       rx_fifo_full, rx_fifo_empty;

    sync_fifo #(.WIDTH(8), .DEPTH(RX_FIFO_DEPTH), .ADDR_WIDTH(3)) u_rx_fifo (
        .clk     (clk),
        .rst_n   (rst_n),
        .wr_en   (rx_fifo_wr_en),
        .wr_data (rx_fifo_wr_data),
        .rd_en   (rx_fifo_rd_en),
        .rd_data (rx_fifo_rd_data),
        .full    (rx_fifo_full),
        .empty   (rx_fifo_empty)
    );

    // ---------------------------------------------------------------
    // uart_tx
    // ---------------------------------------------------------------
    wire tx_done_pulse;

    uart_tx u_uart_tx (
        .clk           (clk),
        .rst_n         (rst_n),
        .tx_en         (uart_en && tx_en),
        .baud_tick_x16 (baud_tick_x16),
        .dbits_sel     (dbits_sel),
        .parity_sel    (parity_sel),
        .stop_sel      (stop_sel),
        .fifo_rd_en    (tx_fifo_rd_en),
        .fifo_rd_data  (tx_fifo_rd_data),
        .fifo_empty    (tx_fifo_empty),
        .txd           (txd),
        .tx_busy       (tx_busy),
        .tx_done_pulse (tx_done_pulse)
    );

    // ---------------------------------------------------------------
    // uart_rx
    // ---------------------------------------------------------------
    wire rx_done_pulse, framing_err_pulse, parity_err_pulse, overrun_err_pulse;

    uart_rx u_uart_rx (
        .clk           (clk),
        .rst_n         (rst_n),
        .rx_en         (uart_en && rx_en),
        .baud_tick_x16 (baud_tick_x16),
        .rxd           (rxd),
        .dbits_sel     (dbits_sel),
        .parity_sel    (parity_sel),
        .stop_sel      (stop_sel),
        .fifo_wr_en    (rx_fifo_wr_en),
        .fifo_wr_data  (rx_fifo_wr_data),
        .fifo_full     (rx_fifo_full),
        .rx_done_pulse (rx_done_pulse),
        .framing_err   (framing_err_pulse),
        .parity_err    (parity_err_pulse),
        .overrun_err   (overrun_err_pulse)
    );

    assign rx_valid  = !rx_fifo_empty;
    assign rx_error  = framing_err_flag | parity_err_flag | overrun_err_flag;

    // ---------------------------------------------------------------
    // Register writes (CTRL / BAUDDIV / STATUS W1C)
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            uart_en    <= 1'b0;
            tx_en      <= 1'b0;
            rx_en      <= 1'b0;
            parity_sel <= 2'b00;
            stop_sel   <= 1'b0;
            dbits_sel  <= 2'b00;
            tx_ie      <= 1'b0;
            rx_ie      <= 1'b0;
            err_ie     <= 1'b0;
            bauddiv    <= 16'd0;
        end else if (apb_write) begin
            case (addr[7:0])
                8'h08: begin
                    uart_en    <= pwdata[0];
                    tx_en      <= pwdata[1];
                    rx_en      <= pwdata[2];
                    parity_sel <= pwdata[4:3];
                    stop_sel   <= pwdata[5];
                    dbits_sel  <= pwdata[7:6];
                    tx_ie      <= pwdata[8];
                    rx_ie      <= pwdata[9];
                    err_ie     <= pwdata[10];
                end
                8'h10: begin
                    bauddiv <= pwdata[15:0];
                end
                default: ;
            endcase
        end
    end

    // ---------------------------------------------------------------
    // STATUS interrupt flags: set on the underlying event, cleared (W1C)
    // by writing a 1 to the corresponding bit at 0x0C
    // ---------------------------------------------------------------
    wire status_w1c = apb_write && (addr[7:0] == 8'h0C);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_done_flag     <= 1'b0;
            rx_done_flag     <= 1'b0;
            framing_err_flag <= 1'b0;
            parity_err_flag  <= 1'b0;
            overrun_err_flag <= 1'b0;
        end else begin
            // set (a new event takes priority over the W1C clear, evaluated
            // afterward, so the flag stays set if both occur in the same cycle)
            if (status_w1c && pwdata[8])  tx_done_flag     <= 1'b0; else if (tx_done_pulse)     tx_done_flag     <= 1'b1;
            if (status_w1c && pwdata[9])  rx_done_flag     <= 1'b0; else if (rx_done_pulse)     rx_done_flag     <= 1'b1;
            if (status_w1c && pwdata[10]) framing_err_flag <= 1'b0; else if (framing_err_pulse) framing_err_flag <= 1'b1;
            if (status_w1c && pwdata[11]) parity_err_flag  <= 1'b0; else if (parity_err_pulse)  parity_err_flag  <= 1'b1;
            if (status_w1c && pwdata[12]) overrun_err_flag <= 1'b0; else if (overrun_err_pulse) overrun_err_flag <= 1'b1;
        end
    end

    // ---------------------------------------------------------------
    // Interrupt output: asserted (level) whenever any enabled flag is set
    // ---------------------------------------------------------------
    assign irq = (tx_ie & tx_done_flag) |
                 (rx_ie & rx_done_flag) |
                 (err_ie & (framing_err_flag | parity_err_flag | overrun_err_flag));

    // ---------------------------------------------------------------
    // Register read (PRDATA) : combinational mux
    //  - Since PREADY=1 (no wait state), PRDATA must already be valid during
    //    the ACCESS phase (i.e. at this transaction's clock edge). Making
    //    rd_data registered would introduce a 1-cycle off-by-one, where
    //    "this read's result only shows up on the next clock" — so, to match
    //    the RX FIFO's combinational read (mem[rd_ptr]), PRDATA is also built
    //    combinationally here.
    // ---------------------------------------------------------------
    always @(*) begin
        case (addr[7:0])
            8'h00: prdata = {24'h0, rx_fifo_rd_data};
            8'h08: prdata = {21'h0, err_ie, rx_ie, tx_ie,
                             dbits_sel, stop_sel, parity_sel, rx_en, tx_en, uart_en};
            8'h0C: prdata = {19'h0,
                             overrun_err_flag, parity_err_flag, framing_err_flag,
                             rx_done_flag, tx_done_flag,
                             2'b00,
                             !rx_fifo_empty, rx_fifo_empty, rx_fifo_full,
                             tx_fifo_empty, tx_fifo_full, tx_busy};
            8'h10: prdata = {16'h0, bauddiv};
            default: prdata = 32'h0;
        endcase
    end

endmodule
