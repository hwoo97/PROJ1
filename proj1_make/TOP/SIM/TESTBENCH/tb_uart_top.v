// =============================================================================
// Testbench    : tb_uart_top
// Description  : Self-check testbench for uart_top
//                 - Uses APB BFM tasks to configure CTRL/BAUDDIV, write
//                   TXDATA, and read STATUS/RXDATA
//                 - Loops TXD back into RXD and verifies that transmitted
//                   data is received unchanged
//                 - Repeats the check while cycling through
//                   None/Even/Odd parity and 1/2 stop-bit combinations
//                 - Uses a small BAUDDIV value (e.g. 3) to keep simulation
//                   time short
//
// How to run (with iverilog installed) :
//   iverilog -o sim.out uart_top.v baud_gen.v sync_fifo.v uart_tx.v uart_rx.v tb_uart_top.v
//   vvp sim.out
// =============================================================================
`timescale 1ns/1ps

module tb_uart_top;

    reg         pclk;
    reg         presetn;
    reg  [7:0]  paddr;
    reg         psel;
    reg         penable;
    reg         pwrite;
    reg  [31:0] pwdata;
    wire [31:0] prdata;
    wire        pready;
    wire        pslverr;

    wire        txd;
    reg         rxd;
    wire        tx_busy, rx_valid, rx_error, irq;

    integer     errors;
    integer     i;

    // ---------------------------------------------------------------
    // DUT
    // ---------------------------------------------------------------
    uart_top dut (
        .pclk    (pclk),
        .presetn (presetn),
        .paddr   (paddr),
        .psel    (psel),
        .penable (penable),
        .pwrite  (pwrite),
        .pwdata  (pwdata),
        .prdata  (prdata),
        .pready  (pready),
        .pslverr (pslverr),
        .txd     (txd),
        .rxd     (rxd),
        .tx_busy (tx_busy),
        .rx_valid(rx_valid),
        .rx_error(rx_error),
        .irq     (irq)
    );

    // TXD -> RXD loopback
    always @(*) rxd = txd;

    // ---------------------------------------------------------------
    // Clock generation : 20ns period (assumes 50MHz; BAUDDIV is kept small
    // here purely to speed up simulation)
    // ---------------------------------------------------------------
    initial pclk = 1'b0;
    always #10 pclk = ~pclk;

    // ---------------------------------------------------------------
    // APB write/read tasks (assumes no wait states, SETUP+ACCESS 2-phase)
    // ---------------------------------------------------------------
    task apb_write(input [7:0] addr, input [31:0] data);
        begin
            @(posedge pclk);
            paddr   <= addr;
            pwdata  <= data;
            pwrite  <= 1'b1;
            psel    <= 1'b1;
            penable <= 1'b0;
            @(posedge pclk);
            penable <= 1'b1;
            @(posedge pclk);
            psel    <= 1'b0;
            penable <= 1'b0;
        end
    endtask

    task apb_read(input [7:0] addr, output [31:0] data);
        begin
            @(posedge pclk);
            paddr   <= addr;
            pwrite  <= 1'b0;
            psel    <= 1'b1;
            penable <= 1'b0;
            @(posedge pclk);
            penable <= 1'b1;
            @(posedge pclk);
            data    = prdata;
            psel    <= 1'b0;
            penable <= 1'b0;
        end
    endtask

    reg [31:0] rdata;

    // ---------------------------------------------------------------
    // Transmit one byte, wait until it is received (RX_VALID), then read
    // RXDATA back and compare
    // ---------------------------------------------------------------
    task send_and_check(input [7:0] tx_byte, input [7:0] mask);
        integer timeout;
        begin
            apb_write(8'h04, {24'h0, tx_byte});   // TXDATA write -> TX FIFO push

            timeout = 0;
            apb_read(8'h0C, rdata);
            while (rdata[5] == 1'b0 && timeout < 20000) begin // wait for RX_VALID
                apb_read(8'h0C, rdata);
                timeout = timeout + 1;
            end

            if (timeout >= 20000) begin
                $display("[FAIL] byte 0x%02h : RX_VALID timeout", tx_byte);
                errors = errors + 1;
            end else begin
                apb_read(8'h00, rdata);   // RXDATA read -> RX FIFO pop
                if ((rdata[7:0] & mask) !== (tx_byte & mask)) begin
                    $display("[FAIL] sent 0x%02h, received 0x%02h (mask 0x%02h)",
                              tx_byte, rdata[7:0], mask);
                    errors = errors + 1;
                end else begin
                    $display("[PASS] sent 0x%02h, received 0x%02h", tx_byte, rdata[7:0]);
                end
            end

            // Check the error flags (framing/parity/overrun must not be set)
            apb_read(8'h0C, rdata);
            if (rdata[10] || rdata[11] || rdata[12]) begin
                $display("[FAIL] unexpected error flag STATUS=0x%08h", rdata);
                errors = errors + 1;
            end
            // Clear the flags via W1C
            apb_write(8'h0C, 32'h0000_FF00);
        end
    endtask

    // ---------------------------------------------------------------
    // Main sequence
    // ---------------------------------------------------------------
    initial begin
        errors  = 0;
        presetn = 1'b0;
        psel    = 1'b0;
        penable = 1'b0;
        pwrite  = 1'b0;
        paddr   = 8'h0;
        pwdata  = 32'h0;

        repeat (5) @(posedge pclk);
        presetn = 1'b1;
        repeat (5) @(posedge pclk);

        // BAUDDIV=3 : (3+1)*16 = 64 clocks = 1 bit time (accelerated value for simulation)
        apb_write(8'h10, 32'd3);

        // ---------------- Case 1 : 8N1 (parity none, stop 1) ----------------
        $display("---- Case 1 : 8 data bit, parity NONE, stop 1 ----");
        apb_write(8'h08, {21'h0, 1'b0, 1'b0, 1'b0,   // err_ie,rx_ie,tx_ie
                           2'b00,                     // dbits_sel = 8bit
                           1'b0,                       // stop_sel = 1 stop
                           2'b00,                       // parity_sel = none
                           1'b1, 1'b1, 1'b1});         // rx_en,tx_en,uart_en
        send_and_check(8'hA5, 8'hFF);
        send_and_check(8'h3C, 8'hFF);
        send_and_check(8'h00, 8'hFF);
        send_and_check(8'hFF, 8'hFF);

        // ---------------- Case 2 : 8E1 (parity even, stop 1) ----------------
        $display("---- Case 2 : 8 data bit, parity EVEN, stop 1 ----");
        apb_write(8'h08, {21'h0, 1'b0, 1'b0, 1'b0,
                           2'b00,        // 8bit
                           1'b0,          // 1 stop
                           2'b10,          // even parity
                           1'b1, 1'b1, 1'b1});
        send_and_check(8'h55, 8'hFF);
        send_and_check(8'h81, 8'hFF);

        // ---------------- Case 3 : 8O2 (parity odd, stop 2) ----------------
        $display("---- Case 3 : 8 data bit, parity ODD, stop 2 ----");
        apb_write(8'h08, {21'h0, 1'b0, 1'b0, 1'b0,
                           2'b00,        // 8bit
                           1'b1,          // 2 stop
                           2'b01,          // odd parity
                           1'b1, 1'b1, 1'b1});
        send_and_check(8'h7E, 8'hFF);
        send_and_check(8'h01, 8'hFF);

        // ---------------- Case 4 : 7 data bit, parity none, stop 1 ----------
        $display("---- Case 4 : 7 data bit, parity NONE, stop 1 ----");
        apb_write(8'h08, {21'h0, 1'b0, 1'b0, 1'b0,
                           2'b01,        // 7bit
                           1'b0,          // 1 stop
                           2'b00,          // none
                           1'b1, 1'b1, 1'b1});
        send_and_check(8'h55, 8'h7F);
        send_and_check(8'h2A, 8'h7F);

        if (errors == 0)
            $display("\n===== ALL TESTS PASSED =====");
        else
            $display("\n===== %0d TEST(S) FAILED =====", errors);

        $finish;
    end

    // Safety net : prevent an infinite wait
    initial begin
        #2_000_000;
        $display("[FAIL] global timeout");
        $finish;
    end

endmodule
