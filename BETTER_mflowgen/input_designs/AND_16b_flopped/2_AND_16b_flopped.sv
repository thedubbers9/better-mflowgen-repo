`default_nettype none

module AND_16b_flopped (
    a, clk, result
);

    parameter BITWIDTH = 16;
    parameter NUM_UNITS = 16;

    input wire [BITWIDTH*NUM_UNITS - 1:0] a;
    input wire clk;          // Clock input for the flops
    output reg [NUM_UNITS - 1:0] result;

    // flop the inputs
    logic [BITWIDTH*NUM_UNITS - 1:0] a_flopped;
    always @(posedge clk) begin
        a_flopped <= a;
    end


    logic [NUM_UNITS - 1:0] result_unflopped;

    genvar i;

    generate
        for (i = 0; i < NUM_UNITS; i = i + 1) begin : and_gates
            AND_16b iDUT (
                .in(a_flopped[i*BITWIDTH +: BITWIDTH]),
                .result(result_unflopped[i])
            );
        end
    endgenerate

    // Flop the outputs
    always @(posedge clk) begin
        result <= result_unflopped;
    end

endmodule

`default_nettype wire