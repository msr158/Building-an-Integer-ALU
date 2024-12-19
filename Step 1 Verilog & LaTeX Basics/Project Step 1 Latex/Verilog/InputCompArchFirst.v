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

