// =============================================================================
// Module      : baud_gen
// Description : 16x Oversampling Baud Rate Generator
//                Generates a baud_tick_x16 (16x) pulse according to the divide
//                ratio configured in the BAUDDIV register.
//                The actual 1x bit timing is derived independently by each of
//                the TX/RX FSMs by counting baud_tick_x16 pulses (RX must
//                re-align its phase on the start-bit edge, so it cannot share
//                a free-running 1x tick).
//
// Baud rate formula :
//   BAUDDIV = (SYS_CLK_FREQ / (16 * BAUD_RATE)) - 1
//   e.g. SYS_CLK = 50MHz, BAUD = 115200
//        BAUDDIV = round(50,000,000 / (16*115200)) - 1 = 26
//
// Reset policy : asynchronous assert, synchronous deassert (rst_n active-low)
// FSM          : none (counter-based sequential logic)
// =============================================================================
module baud_gen #(
    parameter DIV_WIDTH = 16
)(
    input  wire                   clk,
    input  wire                   rst_n,          // asynchronous assert, synchronous deassert
    input  wire                   en,             // baud generator enable (CTRL.UART_EN)
    input  wire [DIV_WIDTH-1:0]   bauddiv,        // BAUDDIV register value (divide ratio - 1)

    output reg                    baud_tick_x16   // 16x oversampling tick (1-clock-wide pulse)
);

    reg [DIV_WIDTH-1:0] div_cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            div_cnt       <= {DIV_WIDTH{1'b0}};
            baud_tick_x16 <= 1'b0;
        end else if (!en) begin
            div_cnt       <= {DIV_WIDTH{1'b0}};
            baud_tick_x16 <= 1'b0;
        end else if (div_cnt == bauddiv) begin
            div_cnt       <= {DIV_WIDTH{1'b0}};
            baud_tick_x16 <= 1'b1;
        end else begin
            div_cnt       <= div_cnt + 1'b1;
            baud_tick_x16 <= 1'b0;
        end
    end

endmodule
