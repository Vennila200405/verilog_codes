module mux_2_1(
input i0,i1,s,
output y
);
wire w1,w2,w3;
not(w2,s);
and(w1,i0,w2);
and(w3,i1,s);
or(y,w1,w3);
endmodule
