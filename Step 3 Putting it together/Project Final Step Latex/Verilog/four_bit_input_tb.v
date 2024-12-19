`include "four_bit_input.v"

module four_bit_input_tb;

    reg clock;
    reg [3:0] four_in1, four_in2;
    wire [3:0] four_out1, four_out2;

    four_bit_input G1 (.clock(clock), .four_in1(four_in1), .four_in2(four_in2), .four_out1(four_out1), .four_out2(four_out2));

    always begin
        #5 clock = ~clock; // Clock generation
    end

    initial begin
        clock = 0;
        four_in1 = 4'b0000; four_in2 = 4'b0000; #10; // Initial values
        four_in1 = 4'b1010; four_in2 = 4'b0101; #10; // Test case 1
        four_in1 = 4'b1100; four_in2 = 4'b0011; #10; // Test case 2
        four_in1 = 4'b1111; four_in2 = 4'b1001; #10; // Test case 3
        four_in1 = 4'b0001; four_in2 = 4'b1000; #10; // Test case 4

        $finish;
    end

endmodule
