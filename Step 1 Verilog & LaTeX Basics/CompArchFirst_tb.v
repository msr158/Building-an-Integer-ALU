`include "CompArchFirst.v" 

// Testbench module
module CompArchFirst_tb;  

    // Registers for inputs and wires for outputs
    reg a, b, clock, reset, right_shift;
    reg [3:0] four_in;

    wire not_out, nand_out, nor_out;  // Output wires for gates
    wire [3:0] four_out, four_shifted; // Output wires for input and shift circuit

    // Instantiate logic gates
    not_gate G1 (.a(a), .not_out(not_out));   
    nand_gate G2 (.a(a), .b(b), .nand_out(nand_out)); 
    nor_gate G3 (.a(a), .b(b), .nor_out(nor_out));  

    // Instantiate 4-bit input module
    four_bit_input G4 
    (
        .clock(clock),   
        .four_in(four_in),
        .four_out(four_out) 
    );

    // Instantiate 4-bit shift circuit
    four_bit_shift_circuit G5
    (
        .clock(clock),      
        .reset(reset),    
        .right_shift(right_shift), 
        .data_in(four_in),  
        .data_out(four_shifted) 
    );
    
    // 10 sec toggle for clock signal
    always begin
        #10 clock = ~clock; 
    end
    
    initial begin

        $dumpfile("CompArch.vcd"); // Waveform Sim's
        $dumpvars(0, CompArchFirst_tb); 

        // Initialize signals
        clock = 0; 
        reset = 1;       
        right_shift = 0;

        // Test inputs to logic gates and input module
        a = 0; b = 0; four_in = 4'b0000; #10; // Test case 1
        a = 0; b = 1; four_in = 4'b1010; #10; // Test case 2
        a = 1; b = 0; four_in = 4'b1100; #10; // Test case 3
        a = 1; b = 1; four_in = 4'b1111; #10; // Test case 4

        // Testing left shift
        right_shift = 0; // Set to left shift
        four_in = 4'b0101; #10; // Input 0101
        four_in = 4'b0011; #10; // Input 0011
        
        // Testing right shift
        right_shift = 1; // Set to right shift
        four_in = 4'b1010; #10; // Input 1010
        four_in = 4'b1100; #10; // Input 1100
        
        // Test reset
        reset = 1; #10; // reset to 0000
        reset = 0; #10; // Release reset

        // Final input tests
        four_in = 4'b1111; #10; // Test input 1111
        right_shift = 0; // Set to left shift
        four_in = 4'b0001; #10; // Shift input 0001 left

        $finish;
    end

endmodule
