module and_gate
(
    input [3:0] a, b,
    output [3:0] and_out
);
    assign and_out = a & b;
endmodule
