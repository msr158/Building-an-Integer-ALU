// ALU modules control circuit
module control_circuit
(
    input [3:0] operation_type,
    output reg [3:0] controller
);

    always @(*) begin
        
        case (operation_type)

            4'b0000: controller = 4'b0000; // AND
            4'b0001: controller = 4'b0001; // NAND
            4'b0010: controller = 4'b0010; // OR
            4'b0011: controller = 4'b0011; // NOR
            4'b0100: controller = 4'b0100; // XOR
            4'b0101: controller = 4'b0101; // XNOR
            4'b0110: controller = 4'b0110; // NOT
            4'b0111: controller = 4'b0111; // Addition
            4'b1000: controller = 4'b1000; // Subtraction
            4'b1001: controller = 4'b1001; // Multiplication
            4'b1010: controller = 4'b1010; // Division

            default: controller = 4'b0000; // Default to AND

        endcase

    end

endmodule