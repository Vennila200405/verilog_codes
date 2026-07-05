module t_flipflop(clk,rst,t,q);
input clk,rst,t;
output reg q;
always @(posedge clk or rst)begin
if(rst)
q<=0;
else if(t)
q<=~q;
else
q<=q;
end
endmodule
