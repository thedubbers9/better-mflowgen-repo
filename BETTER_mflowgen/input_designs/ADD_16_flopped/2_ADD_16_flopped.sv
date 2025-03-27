`default_nettype none

module ADD_16_flopped (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire carry_in,
    input wire clk,          // Clock input for the flops
    output reg carry_out_flopped,
    output reg [15:0] sum_flopped
);

    // Registers for flopped inputs
    reg [15:0] a_flopped;
    reg [15:0] b_flopped;

    // Wires for intermediate results
    wire carry_out;
    wire [15:0] sum;

    // Instantiate the ADD_16b module
    ADD_16b adder_inst (
        .a(a_flopped),
        .b(b_flopped),
        .carry_in(carry_in),
        .carry_out(carry_out),
        .sum(sum)
    );

    // Flop the inputs and the output
    always @(posedge clk) begin
        a_flopped <= a;
        b_flopped <= b;
        carry_out_flopped <= carry_out;
        sum_flopped <= sum;
    end

endmodule

`default_nettype wire