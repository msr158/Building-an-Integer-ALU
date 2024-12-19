`include "and_gate.v"

module and_gate_tb;
    reg [3:0] a, b;
    wire [3:0] and_out;

    and_gate G1 (.a(a), .b(b), .and_out(and_out));

    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b1111; b = 4'b0001; #10;
        a = 4'b1010; b = 4'b1100; #10;
        a = 4'b1111; b = 4'b1111; #10;

        $finish;
    end
endmodule
