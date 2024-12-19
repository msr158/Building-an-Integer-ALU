// 1-bit NAND Gate
module nand_gate 
(
    input a,       // First input
    input b,       // Second input
    output nand_out // Output - NAND result of 'a' and 'b'
);

    // Assign the NAND result of 'a' and 'b' to 'nand_out'
    assign nand_out = ~(a & b);

endmodule


