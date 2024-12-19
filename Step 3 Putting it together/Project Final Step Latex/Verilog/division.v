module division
(
    input [3:0] a, b,
    output [3:0] quotient, remainder
);

    assign quotient = (b != 0) ? (a / b) : 4'b0000;
    assign remainder = (b != 0) ? (a % b) : 4'b0000; 

endmodule
