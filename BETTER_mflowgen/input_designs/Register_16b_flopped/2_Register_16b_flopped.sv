`default_nettype none

module Register_16b_flopped (
    input wire [15:0] a,
    input wire clk,          // Clock input for the flops
    input wire reset,        // Reset input for the flops
    output wire [15:0] result
);

    Register_16b iREG (
        .D(a),
        .reset(reset), 
        .clk(clk),         
        .Q(result)
    );

endmodule

`default_nettype wire