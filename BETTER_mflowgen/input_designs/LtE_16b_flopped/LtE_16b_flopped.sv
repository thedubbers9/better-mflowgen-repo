`default_nettype none

module LtE_16b_flopped (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire clk,          // Clock input for the flops
    output reg result
);

    wire rst_unflopped;
    reg [15:0] a_flopped, b_flopped;

    // Flop the inputs
    always @(posedge clk) begin
        a_flopped <= a;
        b_flopped <= b;
    end

    // Instantiate the module
    LtE_16b iDUT (
        .a(a_flopped),
        .b(b_flopped),
        .rst(rst_unflopped)
    );

    // Flop the output
    always @(posedge clk) begin
        result <= rst_unflopped;
    end

endmodule

`default_nettype wire