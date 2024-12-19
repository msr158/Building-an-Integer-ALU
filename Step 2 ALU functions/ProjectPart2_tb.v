`include "ProjectPart2.v"

module ProjectPart2_tb;

    reg clock, reset, right_shift;
    reg [3:0] a, b, four_in1, four_in2, data_in1, data_in2;

    wire [3:0] and_out, nand_out, or_out, nor_out, xor_out, xnor_out;
    wire [3:0] not_a, not_b;
    wire [3:0] four_out1, four_out2;
    wire [3:0] data_out1, data_out2;

    and_gate G1 (.a(a), .b(b), .and_out(and_out));
    nand_gate G2 (.a(a), .b(b), .nand_out(nand_out));
    or_gate G3 (.a(a), .b(b), .or_out(or_out));
    nor_gate G4 (.a(a), .b(b), .nor_out(nor_out));
    xor_gate G5 (.a(a), .b(b), .xor_out(xor_out));
    xnor_gate G6 (.a(a), .b(b), .xnor_out(xnor_out));
    not_gate G7 (.a(a), .b(b), .not_a(not_a), .not_b(not_b));

    four_bit_input G8
    (
        .clock(clock), 
        .four_in1(four_in1),
        .four_in2(four_in2),
        .four_out1(four_out1),
        .four_out2(four_out2)
    );

    four_bit_shift_circuit G9 
    (
        .clock(clock),
        .reset(reset),
        .right_shift(right_shift),
        .data_in1(data_in1),
        .data_in2(data_in2),
        .data_out1(data_out1),
        .data_out2(data_out2)
    );

    addition Add 
    (
        .a(a), 
        .b(b), 
        .carry_in(carry_in), 
        .carry_out(carry_out_add), 
        .sum(sum)
    );

    subtraction Sub
    (
        .a(a), 
        .b(b), 
        .carry_in(carry_in), 
        .carry_out(carry_out_sub), 
        .difference(difference)
    );

    multiplication Mul
    (
        .a(a), 
        .b(b), 
        .product(product)
    );

    division Div
    (
        .a(a), 
        .b(b), 
        .quotient(quotient), 
        .remainder(remainder)
    );

    always begin

        #10 clock = ~clock; 
        
    end

    initial begin
        $dumpfile("ProjectPart2.vcd"); // Save waveform
        $dumpvars(0, ProjectPart2_tb); // Dump all variables in this module

        clock = 0;
        reset = 1;      
        right_shift = 0; 
      
        a = 4'b0000; b = 4'b0000; #10; 
        a = 4'b0001; b = 4'b1110; #10; 
        a = 4'b1100; b = 4'b0011; #10; 
        a = 4'b1111; b = 4'b1111; #10;

        four_in1 = 4'b1010; four_in2 = 4'b0101; #10;
        four_in1 = 4'b1111; four_in2 = 4'b0000; #10;

        right_shift = 0; 
        data_in1 = 4'b0101; data_in2 = 4'b0011; #10;
        data_in1 = 4'b1010; data_in2 = 4'b1001; #10; 

        right_shift = 1; 
        data_in1 = 4'b1010; data_in2 = 4'b1100; #10;
        data_in1 = 4'b0110; data_in2 = 4'b1111; #10;

        reset = 1; #10;
        reset = 0; #10;

        data_in1 = 4'b1111; data_in2 = 4'b0001; #10; 
        right_shift = 0;
        data_in1 = 4'b0001; data_in2 = 4'b1000; #10;

     
        $finish;
    end

endmodule  