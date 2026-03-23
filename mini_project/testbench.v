module tb_top;

reg clk;
reg reset;
reg [3:0] A, B;
wire [3:0] Y;
wire [1:0] Sel;

top_module uut (
    .clk(clk),
    .reset(reset),
    .A(A),
    .B(B),
    .Y(Y),
    .Sel(Sel)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_top);

    clk = 0;
    reset = 1;
    A = 4'b0101; // 5
    B = 4'b0011; // 3

    #10 reset = 0;

    #100 $finish;
end

endmodule
