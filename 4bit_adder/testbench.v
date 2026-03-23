module tb;
reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

adder_4bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $dumpfile("dump.vcd");   // MUST match exactly
    $dumpvars(0, tb);

    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10 A = 4'b0011; B = 4'b0101;
    #10 A = 4'b1111; B = 4'b0001;
    #10 $finish;
end

endmodule
