module d_flipflop(
input rst,clk,d,
output reg q
);
always @(posedge clk)begin
if (rst)
q<=0;
else
q<=d;
end
endmodule
