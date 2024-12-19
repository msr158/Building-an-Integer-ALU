`include "four_bit_shift_circuit.v"

module four_bit_shift_circuit_tb;

    reg clock, reset, right_shift;
    reg [3:0] data_in1, data_in2;
    wire [3:0] data_out1, data_out2;

    four_bit_shift_circuit G1 (.clock(clock), .reset(reset), .right_shift(right_shift), .data_in1(data_in1), .data_in2(data_in2), .data_out1(data_out1), .data_out2(data_out2));

    always begin
        #5 clock = ~clock; // Clock generation
    end

    initial begin
        clock = 0;
        reset = 1; // Start with reset
        right_shift = 0; // Initial shift direction
        data_in1 = 4'b0000; data_in2 = 4'b0000; #10; // Initial values
        
        reset = 0; #10; // Release reset

        // Test shifting
        data_in1 = 4'b1010; data_in2 = 4'b0101; #10; // Load test values
        right_shift = 0; #10; // Left shift
        right_shift = 1; #10; // Right shift

        // Testing reset functionality
        reset = 1; #10; // Apply reset
        reset = 0; #10; // Release reset
        
        data_in1 = 4'b1100; data_in2 = 4'b0011; #10; // Load more values
        right_shift = 0; #10; // Left shift again
        right_shift = 1; #10; // Right shift again

        $finish;
    end

endmodule
