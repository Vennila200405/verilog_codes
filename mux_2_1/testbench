module mux_2_1_tb;
  reg s,i0,i1;
  wire y;
  mux_2_1 DUT(i0,i1,s,y);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("s=%b,i0=%b,i1=%b,y=%b",i0,i1,s,y);
    i0=0;i1=1;
    s=0;
    #50
    i0=0;i1=1;
    s=1;
  end
endmodule
