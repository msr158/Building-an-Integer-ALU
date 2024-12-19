`include "subtraction.v"

module subtraction_tb;

    reg [3:0] a, b;
    reg carry_in;
    wire carry_out;
    wire [3:0] difference;

    subtraction Sub (.a(a), .b(b), .carry_in(carry_in), .carry_out(carry_out), .difference(difference));

    initial begin
        // Test cases for subtraction
        a = 4'b0100; b = 4'b0010; carry_in = 0; #10; // 4 - 2 = 2
        a = 4'b0010; b = 4'b0001; carry_in = 0; #10; // 2 - 1 = 1
        a = 4'b0001; b = 4'b0001; carry_in = 0; #10; // 1 - 1 = 0
        a = 4'b0000; b = 4'b0001; carry_in = 0; #10; // 0 - 1 = -1 (underflow)

        $finish;
    end

endmodule
