module and_gate
(
    input [3:0] a, b,
    output [3:0] and_out
);

    assign and_out = a & b;

endmodule

module nand_gate
(
    input [3:0] a, b,
    output [3:0] nand_out
);

    assign nand_out = ~(a & b);

endmodule

module or_gate
(
    input [3:0] a, b,
    output [3:0] or_out
);

    assign or_out = a | b;

endmodule

module nor_gate
(
    input [3:0] a, b,
    output [3:0] nor_out
);

    assign nor_out = ~(a | b);

endmodule 

module xor_gate
(
    input [3:0] a, b,
    output [3:0] xor_out
);

    assign xor_out = a ^ b;

endmodule

module xnor_gate
(
    input [3:0] a, b,
    output [3:0] xnor_out
);

    assign xnor_out = ~(a ^ b);

endmodule

module not_gate
(
    input [3:0] a, b,
    output [3:0] not_a, not_b
);

    assign not_a = ~a;
    assign not_b = ~b;

endmodule

module four_bit_input 
(
    input clock, 
    input [3:0] four_in1, four_in2,
    output reg [3:0] four_out1, four_out2
);

    always @(posedge clock) begin

            four_out1 <= four_in1;
            four_out2 <= four_in2;

    end

endmodule

module four_bit_shift_circuit
(
    input clock,
    input reset,
    input right_shift,
    input [3:0] data_in1, data_in2,
    output reg [3:0] data_out1, data_out2
);

    always @(posedge clock or posedge reset) begin

        if (reset) begin

            data_out1 <= 4'b0000;
            data_out2 <= 4'b0000;

        end

        else begin 

            if (right_shift) begin

                data_out1 <= data_in1 >> 1; // Shift right
                data_out2 <= data_in2 >> 1; // Shift right
                
            end

            else begin

                data_out1 <= data_in1 << 1; // Shift left
                data_out2 <= data_in2 << 1; // Shift left
            end

        end

    end

endmodule

module addition
(
    input [3:0] a, b,
    input carry_in,
    output carry_out,
    output [3:0] sum
);

    wire [4:0] addition_result;

    assign addition_result = a + b + carry_in;
    assign sum = addition_result[3:0];
    assign carry_out = addition_result[4];

endmodule

module subtraction
(
    input [3:0] a, b,
    input carry_in,
    output carry_out,
    output [3:0] difference
);

    wire [4:0] subtraction_result;

    assign subtraction_result = a - b - carry_in;
    assign difference = subtraction_result[3:0];
    assign carry_out = subtraction_result[4];

endmodule

module multiplication
(
    input [3:0] a, b,
    output [7:0] product
);

    assign product = a * b;

endmodule

module division
(
    input [3:0] a, b,
    output [3:0] quotient, remainder
);

    assign quotient = (b != 0) ? (a / b) : 4'b0000;
    assign remainder = (b != 0) ? (a % b) : 4'b0000; 
    
endmodule
