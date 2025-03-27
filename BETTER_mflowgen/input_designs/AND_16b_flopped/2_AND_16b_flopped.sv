`default_nettype none

module AND_16b_flopped (
    input wire [15:0] a,
    input wire clk,          // Clock input for the flops
    output reg result
);

    // Wires for intermediate results from the ADD_16b module
    wire rst_unflopped;
    reg [15:0] a_flopped;


    // Flop the inputs
    always_ff @( posedge clk ) begin
        a_flopped <= a;      
    end

    // Instantiate the ADD_16b module
    AND_16b iDUT (
        .in(a_flopped),
        .result(rst_unflopped)
    );

    // Flop the outputs
    always @(posedge clk) begin
        result <= rst_unflopped;
    end

endmodule

`default_nettype wire