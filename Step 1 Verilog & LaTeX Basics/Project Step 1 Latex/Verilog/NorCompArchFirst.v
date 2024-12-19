// 1-bit NOR Gate
module nor_gate 
(
    input a,       // First input 
    input b,       // Second input
    output nor_out // Output - NOR result of 'a' and 'b'
);

    // Assign the NOR result of 'a' and 'b' to 'nor_out'
    assign nor_out = ~(a | b);

endmodule
