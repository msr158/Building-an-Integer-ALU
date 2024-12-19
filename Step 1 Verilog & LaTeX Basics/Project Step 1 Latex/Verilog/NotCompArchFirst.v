// 1-bit Not Gate
module not_gate 
(
    input a,        // Input
    output not_out  // Output - NOT result of 'a'
);

    // Assign the inverted value of 'a' to 'not_out'
    assign not_out = ~a;

endmodule

