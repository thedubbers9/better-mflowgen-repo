`default_nettype none

module BitAND_16b_flopped (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire clk,          // Clock input for the flops
    output reg [15:0] result
);

    // Wires for intermediate results from the ADD_16b module
    wire [15:0] rst_unflopped;
    reg [15:0] a_flopped, b_flopped;


    // Flop the inputs
    always_ff @( posedge clk ) begin
        a_flopped <= a;
        b_flopped <= b;
        
    end

    // Instantiate the ADD_16b module
    BitAND_16b iDUT (
        .a(a_flopped),
        .b(b_flopped),
        .rst(rst_unflopped)
    );

    // Flop the outputs
    always @(posedge clk) begin
        result <= rst_unflopped;
    end

endmodule

`default_nettype wire