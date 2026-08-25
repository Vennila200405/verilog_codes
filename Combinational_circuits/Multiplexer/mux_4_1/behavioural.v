module mux_4_1(
input i0,i1,i2,i3,
input s1,s0,
output reg y
);
always @(*)begin
y=s1?(s0?i3:i2):
     (s0?i1:i0);
end
endmodule
