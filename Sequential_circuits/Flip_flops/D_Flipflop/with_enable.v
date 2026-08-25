module d_flipflop(
input clk,d,en,
output reg q
);
always @(posedge clk)begin
if (en)
q<=d;
else
q<=q;
end
endmodule
