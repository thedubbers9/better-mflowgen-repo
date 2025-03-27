/**
    * performs a bitwise AND operation on two 16-bit inputs
*/

`default_nettype none
module NOT_16b (
    input wire [15:0] in,
    output wire [15:0] result
);

	assign result = ~in;

endmodule

`default_nettype wire