module nor_gate
(
    input [3:0] a, b,
    output [3:0] nor_out
);
    assign nor_out = ~(a | b);
endmodule
