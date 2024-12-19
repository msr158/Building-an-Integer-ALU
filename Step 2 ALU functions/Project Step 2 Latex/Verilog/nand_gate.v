module nand_gate
(
    input [3:0] a, b,
    output [3:0] nand_out
);
    assign nand_out = ~(a & b);
endmodule
