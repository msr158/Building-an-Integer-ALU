module not_gate
(
    input [3:0] a, b,
    output [3:0] not_a, not_b
);
    assign not_a = ~a;
    assign not_b = ~b;
endmodule
