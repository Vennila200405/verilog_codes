module arithmetic_operator;
input [4:0] a;
input[4:0]b;
output[4:0] sum;
output[4:0]sub;
output[4:0]mul;
output[4:0]div;
assign sum=a+b;
assign sub=a-b;
assign mul=a*b;
assign div=a/b;
endmodule
