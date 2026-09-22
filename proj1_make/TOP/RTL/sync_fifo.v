// =============================================================================
// Module      : sync_fifo
// Description : General-purpose synchronous (single clock) FIFO, shared by
//                the UART TX and RX paths.
//                DEPTH=8 (default), WIDTH=8 (default, data byte)
//                Synthesizable RTL only, no latches. Register-based memory.
//
// rd_data is a combinational read (it always drives mem[rd_ptr] directly).
// On the very cycle rd_en is asserted, rd_data already shows "the data about
// to be popped", and the pointer advances after that clock edge (i.e. FIFO
// read latency is 0). If rd_data were registered instead, the pop-request
// cycle would still show the previous value and the actual data would only
// appear one clock later, which causes an off-by-one error in a single-cycle
// APB read (PRDATA) or in an FSM that latches data on the same cycle it pops.
//
// Reset policy : asynchronous assert, synchronous deassert
// =============================================================================
module sync_fifo #(
    parameter WIDTH      = 8,
    parameter DEPTH      = 8,                 // FIFO depth (power of 2 recommended)
    parameter ADDR_WIDTH = 3                  // $clog2(DEPTH)
)(
    input  wire                  clk,
    input  wire                  rst_n,       // asynchronous assert, synchronous deassert

    input  wire                  wr_en,
    input  wire [WIDTH-1:0]      wr_data,

    input  wire                  rd_en,
    output wire [WIDTH-1:0]      rd_data,

    output wire                  full,
    output wire                  empty
);

    reg [WIDTH-1:0]        mem [0:DEPTH-1];
    reg [ADDR_WIDTH-1:0]   wr_ptr;
    reg [ADDR_WIDTH-1:0]   rd_ptr;
    reg [ADDR_WIDTH:0]     cnt;               // 0 ~ DEPTH (occupancy)

    wire wr_valid = wr_en && !full;
    wire rd_valid = rd_en && !empty;

    assign full  = (cnt == DEPTH);
    assign empty = (cnt == 0);

    // ---------------------------------------------------------------
    // Write pointer / memory write
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr <= {ADDR_WIDTH{1'b0}};
        end else if (wr_valid) begin
            mem[wr_ptr] <= wr_data;
            wr_ptr      <= (wr_ptr == DEPTH-1) ? {ADDR_WIDTH{1'b0}} : wr_ptr + 1'b1;
        end
    end

    // ---------------------------------------------------------------
    // Read pointer (combinational read data; only the pointer advances
    // synchronously)
    // ---------------------------------------------------------------
    assign rd_data = mem[rd_ptr];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rd_ptr <= {ADDR_WIDTH{1'b0}};
        end else if (rd_valid) begin
            rd_ptr <= (rd_ptr == DEPTH-1) ? {ADDR_WIDTH{1'b0}} : rd_ptr + 1'b1;
        end
    end

    // ---------------------------------------------------------------
    // FIFO occupancy counter (holds steady on simultaneous read/write)
    // ---------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= {(ADDR_WIDTH+1){1'b0}};
        end else begin
            case ({wr_valid, rd_valid})
                2'b10:   cnt <= cnt + 1'b1;
                2'b01:   cnt <= cnt - 1'b1;
                default: cnt <= cnt; // 00, or 11 (simultaneous read/write): no change
            endcase
        end
    end

endmodule
