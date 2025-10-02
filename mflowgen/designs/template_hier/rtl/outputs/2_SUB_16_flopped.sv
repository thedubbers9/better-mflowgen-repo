`default_nettype none

module SUB_16_flopped (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire clk,          // Clock input for the flops
    input wire reset,        // Synchronous reset for the flops
    output reg [15:0] sum_flopped
);

    // Wires for intermediate results from the ADD_16b module
    wire carry_out;
    wire [15:0] sum;

    // Instantiate the ADD_16b module
    SUB_16b adder_inst (
        .a(a),
        .b(b),
        .rst(sum)
    );

    // Flop the output with synchronous reset
    always @(posedge clk) begin
        if (reset) begin
            sum_flopped <= 16'b0;
        end else begin
            sum_flopped <= sum;
        end
    end

endmodule

`default_nettype wire