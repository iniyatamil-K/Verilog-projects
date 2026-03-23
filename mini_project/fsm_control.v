module fsm_control (
    input clk,
    input reset,
    output reg [1:0] Sel
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Sel <= 2'b00;
    else
        Sel <= Sel + 1; // cycles 00 → 01 → 10 → 11
end

endmodule
