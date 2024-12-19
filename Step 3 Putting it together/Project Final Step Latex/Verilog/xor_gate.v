module xor_gate
(
    input [3:0] a, b,
    output [3:0] xor_out
);
    assign xor_out = a ^ b;
endmodule
