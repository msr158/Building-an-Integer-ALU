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
            data_out1 <= 4'b0000; // reset output1 to 0
            data_out2 <= 4'b0000; // reset output2 to 0
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
