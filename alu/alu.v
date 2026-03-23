module alu (
    input [3:0] A, B,
    input [1:0] Sel,
    output reg [3:0] Y
);

always @(*) begin
    case (Sel)
        2'b00: Y = A + B;   // Addition
        2'b01: Y = A - B;   // Subtraction
        2'b10: Y = A & B;   // AND
        2'b11: Y = A | B;   // OR
    endcase
end

endmodule
