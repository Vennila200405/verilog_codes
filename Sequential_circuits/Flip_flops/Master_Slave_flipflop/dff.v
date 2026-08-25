module master_slave_dflipflop(
input d,clk,
output reg q
);

reg master;

always @(*)begin
if(clk)
master =d;
end

always @(*)begin
if(~clk)
q =master;

end
endmodule
