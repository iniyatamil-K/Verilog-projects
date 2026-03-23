module top_module (
    input clk,
    input reset,
    input [3:0] A, B,
    output [3:0] Y,
    output [1:0] Sel
);

fsm_control fsm (
    .clk(clk),
    .reset(reset),
    .Sel(Sel)
);

alu alu_unit (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Y(Y)
);

endmodule
