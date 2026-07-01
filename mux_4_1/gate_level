module mux_4_1(
input i0,i1,i2,i3,
input s1,s0,
output y
);

wire w1,w2,w3,w4;
wire s1b,s0b;

not(s1b,s1);
not(s0b,s0);

and(w1,i0,s1b,s0b);
and(w2,i1,s1b,s0);
and(w3,i2,s1,s0b);
and(w4,i3,s1,s0);

or(y,w1,w2,w3,w4);

endmodule
