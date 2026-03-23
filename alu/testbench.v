module tb_alu;
reg [3:0] A, B;
reg [1:0] Sel;
wire [3:0] Y;

alu uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_alu);

    A = 4'b0101; B = 4'b0011;

    Sel = 2'b00; #10; // Add
    Sel = 2'b01; #10; // Sub
    Sel = 2'b10; #10; // AND
    Sel = 2'b11; #10; // OR

    $finish;
end

endmodule
