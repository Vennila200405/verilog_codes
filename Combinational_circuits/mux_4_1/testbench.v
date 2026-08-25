module mux_4_1_tb;
reg [1:0] s;
reg i0,i1,i2,i3;
wire y;
mux_4_1 DUT(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s1(s[1]),
    .s0(s[0]),
    .y(y)
);
initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0);

    $monitor("s=%b i0=%b i1=%b i2=%b i3=%b y=%b",
              s,i0,i1,i2,i3,y);

    i0=0;
    i1=1;
    i2=0;
    i3=1;

    s=2'b00; #10;
    s=2'b01; #10;
    s=2'b10; #10;
    s=2'b11; #10;

    $finish;

end

endmodule
