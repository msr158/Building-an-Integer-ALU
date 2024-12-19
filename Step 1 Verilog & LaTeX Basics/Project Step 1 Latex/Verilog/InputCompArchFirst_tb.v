`include "CompArchFirst.v" 

// Testbench module
module CompArchFirst_tb;

    // Registers for inputs and wires for outputs
    reg clock;
    reg [3:0] four_in;

    wire [3:0] four_out; // Output wires for input and shift circuit

    // Instantiate 4-bit input module
    four_bit_input G4 
    (
        .clock(clock),
        .four_in(four_in),
        .four_out(four_out) 
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

        // Test inputs to logic gates and input module
        four_in = 4'b0000; #10; // Test case 1
        four_in = 4'b1010; #10; // Test case 2
        four_in = 4'b1100; #10; // Test case 3
        four_in = 4'b1111; #10; // Test case 4

        $finish;
    end

endmodule