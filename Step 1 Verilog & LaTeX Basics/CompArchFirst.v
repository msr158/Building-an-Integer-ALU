// 1-bit Not Gate
module not_gate 
(
    input a, // Input
    output not_out  // Output - NOT result of 'a'
);

    // Assign the inverted value of 'a' to 'not_out'
    assign not_out = ~a;

endmodule

// 1-bit NAND Gate
module nand_gate 
(
    input a, // First input
    input b, // Second input
    output nand_out // Output - NAND result of 'a' and 'b'
);

    // Assign the NAND result of 'a' and 'b' to 'nand_out'
    assign nand_out = ~(a & b);

endmodule

// 1-bit NOR Gate
module nor_gate 
(
    input a, // First input 
    input b, // Second input
    output nor_out // Output - NOR result of 'a' and 'b'
);

    // Assign the NOR result of 'a' and 'b' to 'nor_out'
    assign nor_out = ~(a | b);

endmodule

// 1x4-bit Input Module
module four_bit_input 
(
    input clock, // clock 
    input [3:0] four_in, // 4-bit input signal ([3:0])
    output [3:0] four_out = 4'b0000 // 4-bit output signal ([3:0])
);

    always @(posedge clock) begin

            four_out <= four_in;

    end

endmodule

// 1x4-bit Shift Circuit
module four_bit_shift_circuit
(
    input clock,
    input reset,
    input right_shift,
    input [3:0] data_in,
    output reg [3:0] data_out
);

    always @(posedge clock or posedge reset) begin

        if (reset) begin

            data_out <= 4'b0000; // Reset output to 0

        end

        else begin 

            if (right_shift) begin

                data_out <= data_in >> 1; // Shift right

            end

            else begin

                data_out <= data_in << 1; // Shift left

            end

        end

    end

endmodule
