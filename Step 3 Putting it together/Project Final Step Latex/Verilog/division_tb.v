`include "division.v"

module division_tb;

    reg [3:0] a, b;
    wire [3:0] quotient, remainder;

    division Div (.a(a), .b(b), .quotient(quotient), .remainder(remainder));

    initial begin
        // Test cases for division
        a = 4'b0100; b = 4'b0010; #10; // 4 / 2 = 2
        a = 4'b0001; b = 4'b0001; #10; // 1 / 1 = 1
        a = 4'b0010; b = 4'b0001; #10; // 2 / 1 = 2
        a = 4'b0000; b = 4'b0001; #10; // 0 / 1 = 0
        a = 4'b0100; b = 4'b0000; #10; // Division by zero

        $finish;
    end

endmodule
