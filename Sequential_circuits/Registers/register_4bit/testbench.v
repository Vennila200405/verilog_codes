module register_4bit_tb;
reg clk;
reg [3:0] d;
wire [3:0] q;

register_4bit uut (
    .clk(clk),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial begin
 
    clk = 0;
    d = 4'b0000;
    #10 d = 4'b1010;
    #10 d = 4'b0101;
    #10 d = 4'b1111;
    #10 d = 4'b0011;
    #10 d = 4'b1001;

    #10 $finish;
end

initial begin
    $dumpfile("dump.vcd");;
    $dumpvars(0,register_4bit_tb);
    $monitor("time=%0t clk=%b d=%b q=%b",$time, clk, d, q);
end
endmodule
