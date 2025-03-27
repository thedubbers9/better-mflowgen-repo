`default_nettype none

module SUB_16_flopped (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire clk,          // Clock input for the flops
    output reg [15:0] result_flopped
);

    // Registers for flopped inputs
    reg [15:0] a_flopped;
    reg [15:0] b_flopped;

    // Wires for intermediate results from the SUB_16b module
    wire [15:0] diff;

    // Instantiate the SUB_16b module
    SUB_16b sub_inst (
        .a(a_flopped),
        .b(b_flopped),
        .diff(diff)
    );

    // Flop the inputs and the output
    always @(posedge clk) begin
        a_flopped <= a;
        b_flopped <= b;
        result_flopped <= diff;
    end

endmodule

`default_nettype wire