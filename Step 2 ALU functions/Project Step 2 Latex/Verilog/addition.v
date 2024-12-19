module addition
(
    input [3:0] a, b,
    input carry_in,
    output carry_out,
    output [3:0] sum
);

    wire [4:0] addition_result;

    assign addition_result = a + b + carry_in;
    assign sum = addition_result[3:0];
    assign carry_out = addition_result[4];

endmodule
