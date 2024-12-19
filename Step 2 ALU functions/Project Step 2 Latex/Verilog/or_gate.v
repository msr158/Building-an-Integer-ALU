module or_gate
(
    input [3:0] a, b,
    output [3:0] or_out
);
    assign or_out = a | b;
endmodule
