module t_flipflop_tb;

reg clk;
reg set;
reg reset;
reg t;
wire q;

t_flipflop uut(
    .clk(clk),
    .set(set),
    .reset(reset),
    .t(t),
    .q(q)
);
always #5 clk = ~clk;

initial
begin
    clk = 0;
    set = 0;
    reset = 0;
    t = 0;
    #8 set = 1;
    #10 set = 0;
    #10 t = 1;
    #10 t = 0;
    #10 t = 1;
    #10 reset = 1;
    #10 reset = 0;
     #10 t = 1;
  #20 $finish;
end

initial
begin
    $monitor("time=%0t clk=%b set=%b reset=%b t=%b q=%b",
              $time, clk, set, reset, t, q);
end
endmodule
