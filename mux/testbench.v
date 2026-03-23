module tb_mux;
reg A, B, Sel;
wire Y;
mux_2to1 uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux);

    A = 0; B = 1; Sel = 0;
    #10 Sel = 1;
    #10 A = 1; B = 0;
    #10 Sel = 0;
    #10 $finish;
end

endmodule
