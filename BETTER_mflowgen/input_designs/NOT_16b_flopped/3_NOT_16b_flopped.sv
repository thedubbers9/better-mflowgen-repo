`default_nettype none

module NOT_16b_flopped (
    input wire [15:0] a,
    input wire clk,          // Clock input for the flops
    input wire reset,        // Reset input for the flops
    output wire [15:0] result
);

    // Wires for intermediate results from the ADD_16b module
    reg [15:0] a_flopped;

    Register_16b iREG (
        .D(a),
        .reset(reset), 
        .clk(clk),         
        .Q(a_flopped)
    );

    //assign result = ~a_flopped;

    NOT_16b iNOT (
        .in(a_flopped),
        .result(result)
    );

endmodule

`default_nettype wire