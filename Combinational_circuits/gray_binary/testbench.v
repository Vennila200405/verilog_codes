module gray_to_binary_tb;
reg [3:0]g;
wire [3:0]b;
gray_to_binary dut(
                   .b(b),
                   .g(g)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,gray_to_binary_tb);
$monitor("b=%b g=%b",b,g);

end

initial begin
    g = 4'b0000; #10;
    g = 4'b0001; #10;
    g = 4'b0011; #10;
    g = 4'b0010; #10;
    g = 4'b0110; #10;
    g = 4'b0111; #10;
    g = 4'b0101; #10;
    g = 4'b0100; #10;
    g = 4'b1100; #10;
    g = 4'b1101; #10;
    g = 4'b1111; #10;
    g = 4'b1110; #10;
    g = 4'b1010; #10;
    g = 4'b1011; #10;
    g = 4'b1001; #10;
    g = 4'b1000; #10;
$finish;
end
endmodule
