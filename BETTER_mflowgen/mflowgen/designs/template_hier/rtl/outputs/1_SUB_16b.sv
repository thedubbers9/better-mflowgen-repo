/**
    basic MAC unit based on design from https://ieeexplore.ieee.org/document/7054782
*/

`default_nettype none
module SUB_16b (
    input wire [15:0] a,
    input wire [15:0] b,
    output wire [15:0] rst
);

	assign rst = a - b;


endmodule

`default_nettype wire