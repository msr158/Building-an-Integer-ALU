`include "CompArchFirst.v"

module CompArchFirst_tb;

    reg a, b;

    wire nand_out;

    nand_gate G2 (.a(a), .b(b), .nand_out(nand_out));

    initial begin

        $dumpfile("CompArchFirst.vcd");
        $dumpvars(0, CompArchFirst_tb);

         // Display headers for better clarity in the console
        $display("a b | nand_out");  
        $display("--------------");

        // Apply test cases
        a = 0; b = 0; #10;
        $display("%b %b |    %b", a, b, nand_out);

        a = 0; b = 1; #10;
        $display("%b %b |    %b", a, b, nand_out);

        a = 1; b = 0; #10;
        $display("%b %b |    %b", a, b, nand_out);

        a = 1; b = 1; #10;
        $display("%b %b |    %b", a, b, nand_out);

        $finish;  // End simulation

    end

endmodule

 