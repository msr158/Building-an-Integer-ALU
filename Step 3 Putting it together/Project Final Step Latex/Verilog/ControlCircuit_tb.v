`include "ControlCircuit.v" 

module Final_tb;

    reg clock, reset, carry_in;
    reg [3:0] a, b;
    reg [3:0] operation_type;

    wire [3:0] controller;

    control_circuit CC
    (
        .operation_type(operation_type),
        .controller(controller)
    );


    always begin

        #10 clock = ~clock; 
        
    end

    initial begin

        $dumpfile("ModuleWaves.vcd"); // Waveform simulations
        $dumpvars(0, Final_tb);

        // Initialize signals
        clock = 0;
        reset = 1;      
        operation_type = 4'b0000; 
       
        // control circuit
        operation_type = 4'b0000; a = 4'b1010; b = 4'b0101; #5; // AND
        operation_type = 4'b0001; a = 4'b1010; b = 4'b0101; #5; // NAND
        operation_type = 4'b0010; a = 4'b1010; b = 4'b0101; #5; // OR
        operation_type = 4'b0011; a = 4'b1010; b = 4'b0101; #5; // NOR
        operation_type = 4'b0100; a = 4'b1010; b = 4'b0101; #5; // XOR
        operation_type = 4'b0101; a = 4'b1010; b = 4'b0101; #5; // XNOR
        operation_type = 4'b0110; a = 4'b1010; #5; // NOT

        // Test arithmetic operations
        operation_type = 4'b0111; a = 4'b0011; b = 4'b0001; carry_in = 0; #5; // Addition
        operation_type = 4'b1000; a = 4'b0100; b = 4'b0010; carry_in = 0; #5; // Subtraction
        operation_type = 4'b1001; a = 4'b0011; b = 4'b0010; #5; // Multiplication
        operation_type = 4'b1010; a = 4'b0100; b = 4'b0010; #20; // Division

        $finish;

    end

endmodule
