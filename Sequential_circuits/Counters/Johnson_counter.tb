`timescale 1ns/1ps

module johnson_counter_tb;
reg clk;
reg reset;
wire [3:0] q;

Johnson_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    #10;
    reset = 0;
    #80;

    $finish;
end

initial begin
    $display("Time\tReset\tQ");
    $monitor("%0t\t%b\t%b", $time, reset, q);
end

endmodule
