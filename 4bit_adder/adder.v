module adder_4bit (
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
assign {Cout, Sum} = A + B + Cin;
endmodule
