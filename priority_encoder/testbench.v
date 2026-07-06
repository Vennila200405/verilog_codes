module priority_encoder_tb;
reg i0,i1,i2,i3;
wire [1:0]y;
priority_encoder DUT(
                     .i0(i0),
                     .i1(i1),
                     .i2(i2),
                     .i3(i3),
                     .y(y)
);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0,priority_encoder_tb);
$monitor("i0=%b i1=%b i2=%b i3=%b y=%b",i0,i1,i2,i3,y);
end

initial begin
{i3,i2,i1,i0} = 4'b0000;
    #10;

    {i3,i2,i1,i0} = 4'b0001;
    #10;
    {i3,i2,i1,i0} = 4'b0010;
    #10;
    {i3,i2,i1,i0} = 4'b0100;
    #10;
    {i3,i2,i1,i0} = 4'b1000;
    #10;
    {i3,i2,i1,i0} = 4'b0011;
    #10;
    {i3,i2,i1,i0} = 4'b0111;
    #10;
    {i3,i2,i1,i0} = 4'b1111;
    #10;
  $finish;
end
endmodule
