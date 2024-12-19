module xnor_gate
(
    input [3:0] a, b,
    output [3:0] xnor_out
);
    assign xnor_out = ~(a ^ b);
endmodule
