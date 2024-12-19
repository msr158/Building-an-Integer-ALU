module four_bit_input 
(
    input clock, 
    input [3:0] four_in1, four_in2,  // 2x4-bit input signals ([3:0])
    output reg [3:0] four_out1, four_out2 // 2x4-bit output signals ([3:0])
);

    always @(posedge clock) begin
        four_out1 <= four_in1;
        four_out2 <= four_in2;
    end

endmodule
