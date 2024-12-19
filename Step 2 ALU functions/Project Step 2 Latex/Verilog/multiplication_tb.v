`include "multiplication.v"

module multiplication_tb;

    reg [3:0] a, b;
    wire [7:0] product;

    multiplication Mul (.a(a), .b(b), .product(product));

    initial begin
        // Test cases for multiplication
        a = 4'b0001; b = 4'b0010; #10; // 1 * 2 = 2
        a = 4'b0010; b = 4'b0011; #10; // 2 * 3 = 6
        a = 4'b0001; b = 4'b0001; #10; // 1 * 1 = 1
        a = 4'b0011; b = 4'b0010; #10; // 3 * 2 = 6

        $finish;
    end

endmodule
