`default_nettype none

module FloorDiv_16_flopped (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire clk,          // Clock input for the flops
    output reg [15:0] sum_flopped
);

    // Registers for flopped inputs
    reg [15:0] a_flopped;
    reg [15:0] b_flopped;

    // Wires for intermediate results
    wire [15:0] quotient;

    // Instantiate the ADD_16b module
    FloorDiv_16b adder_inst (
        .a(a_flopped),
        .b(b_flopped),
        .quotient(quotient)
    );

    // Flop the inputs and the output
    always @(posedge clk) begin
        a_flopped <= a;
        b_flopped <= b;
        sum_flopped <= quotient;
    end

endmodule

`default_nettype wire