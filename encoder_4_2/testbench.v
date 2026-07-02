module encoder_4_2_tb;
reg [3:0]d;
wire [1:0]y;
encoder_4_2 uut (
                 .d(d),
                 .y(y)
);
initial begin 

$dumpfile("dump.vcd");
$dumpvars(0,encoder_4_2_tb);
$monitor("d=%b y=%b",d,y);
end

initial begin

d= 4'b0001;  #10
d= 4'b0010;  #10
d= 4'b0100;  #10
d= 4'b1000;

end
endmodule
