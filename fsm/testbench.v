module tb_fsm;

reg clk;
reg reset;
wire [1:0] state;

traffic_fsm uut (
    .clk(clk),
    .reset(reset),
    .state(state)
);

// Clock generation (10 time units period)
always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_fsm);

    clk = 0;
    reset = 1;

    // Keep reset active for enough time
    #12 reset = 0;

    #100 $finish;
end

endmodule
