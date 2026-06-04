module d_flipflop(
input rst,clk,d,set,
output reg q
);
always @(posedge clk)begin
if (rst)
q<=0;
else if (set)
q<=1;
else
q<=d;
end
endmodule
