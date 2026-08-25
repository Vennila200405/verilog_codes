module mux_4_1(
input i0,i1,i2,i3,
input s1,s0,
output y
);
assign y=(~s1&~s0)+(~s1&s0)+(s1&~s0)+(s1&s0);
endmodule
