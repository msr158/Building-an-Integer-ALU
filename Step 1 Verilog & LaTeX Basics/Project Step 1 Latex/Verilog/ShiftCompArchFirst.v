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
