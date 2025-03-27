`default_nettype none

module OR_16b_flopped (
    input wire [15:0] a,
    input wire clk,          // Clock input for the flops
    //input wire rst_n,        // Synchronous reset for the flops
    output reg result
);

    wire result_unflopped;
    reg [15:0] input_flopped;

    // Flop the input with async reset
    always_ff @(posedge clk) begin
        input_flopped <= a;
    end
    
    // Instantiate the module
    OR_16b iDUT (
        .in(input_flopped),
        .out(result_unflopped)
    );

    // Flop the output with async reset
    always_ff @(posedge clk) begin
        // if (!rst_n) begin
        //     result <= '0;
        // end else begin
        result <= result_unflopped;
        // end
    end

endmodule

`default_nettype wire