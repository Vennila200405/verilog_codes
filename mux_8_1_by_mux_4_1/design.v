module mux_8_1(
    input [7:0] in,
    input [2:0] sel,
    output y
);

wire w1, w2;

mux_4_1 M1(
    .i0(in[0]),
    .i1(in[1]),
    .i2(in[2]),
    .i3(in[3]),
    .s1(sel[1]),
    .s0(sel[0]),
    .y(w1)
);

mux_4_1 M2(
    .i0(in[4]),
    .i1(in[5]),
    .i2(in[6]),
    .i3(in[7]),
    .s1(sel[1]),
    .s0(sel[0]),
    .y(w2)
);

mux_2_1 M3(
    .i0(w1),
    .i1(w2),
    .sel(sel[2]),
    .y(y)
);

endmodule
