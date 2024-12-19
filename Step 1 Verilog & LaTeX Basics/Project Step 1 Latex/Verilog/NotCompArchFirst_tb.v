`include "CompArchFirst.v"

module CompArchFirst_tb;

    reg a, b;

    wire not_out;

    not_gate G1 (.a(a), .not_out(not_out));

    initial begin

        $dumpfile("CompArchFirst.vcd");
        $dumpvars(0, CompArchFirst_tb);

         // Display headers for better clarity in the console
        $display("a b | not_out");  
        $display("--------------");

        // Apply test cases
        a = 0; b = 0; #10;
        $display("%b %b |    %b", a, b, not_out);

        a = 0; b = 1; #10;
        $display("%b %b |    %b", a, b, not_out);

        a = 1; b = 0; #10;
        $display("%b %b |    %b", a, b, not_out);

        a = 1; b = 1; #10;
        $display("%b %b |    %b", a, b, not_out);

        $finish;  // End simulation

    end

endmodule

 