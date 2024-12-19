module subtraction
(
    input [3:0] a, b,
    input carry_in,
    output carry_out,
    output [3:0] difference
);

    wire [4:0] subtraction_result;

    assign subtraction_result = a - b - carry_in;
    assign difference = subtraction_result[3:0];
    assign carry_out = subtraction_result[4];

endmodule
