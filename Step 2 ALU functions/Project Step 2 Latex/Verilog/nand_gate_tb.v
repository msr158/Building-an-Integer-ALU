`include "nand_gate.v"

module nand_gate_tb;
    reg [3:0] a, b;
    wire [3:0] nand_out;

    nand_gate G1 (.a(a), .b(b), .nand_out(nand_out));

    initial begin
        $dumpfile("nand_gate.vcd");
        $dumpvars(0, nand_gate_tb);

        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b1111; b = 4'b0001; #10;
        a = 4'b1010; b = 4'b1100; #10;
        a = 4'b1111; b = 4'b1111; #10;

        $finish;
    end
endmodule
