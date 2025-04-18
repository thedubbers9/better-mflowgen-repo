/**
    * performs a bitwise AND operation on two 16-bit inputs
*/

`default_nettype none
module BitAND_16b (
    input wire [15:0] a,
    input wire [15:0] b,
    output wire [15:0] result
);

	assign result = a & b;


endmodule

`default_nettype wire