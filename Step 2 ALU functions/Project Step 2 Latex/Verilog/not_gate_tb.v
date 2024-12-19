`include "not_gate.v"

module not_gate_tb;
    reg [3:0] a, b;
    wire [3:0] not_a, not_b;

    not_gate G1 (.a(a), .b(b), .not_a(not_a), .not_b(not_b));

    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0, not_gate_tb);

        a = 4'b0000; b = 4'b0001; #10;
        a = 4'b1010; b = 4'b0101; #10;
        a = 4'b1111; b = 4'b1111; #10;

        $finish;
    end
endmodule
