`include "addition.v"

module addition_tb;

    reg [3:0] a, b;
    reg carry_in;
    wire carry_out;
    wire [3:0] sum;

    addition Add (.a(a), .b(b), .carry_in(carry_in), .carry_out(carry_out), .sum(sum));

    initial begin
        // Test cases for addition
        a = 4'b0000; b = 4'b0000; carry_in = 0; #10; // 0 + 0 = 0
        a = 4'b0001; b = 4'b0001; carry_in = 0; #10; // 1 + 1 = 2
        a = 4'b0010; b = 4'b0010; carry_in = 0; #10; // 2 + 2 = 4
        a = 4'b0011; b = 4'b0001; carry_in = 0; #10; // 3 + 1 = 4

        $finish;
    end

endmodule
