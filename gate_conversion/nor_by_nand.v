module nor_by_nand(
    input a,b,
    output y
);

wire na,nb,x;

assign na = ~(a & a);
assign nb = ~(b & b);

assign x = ~(na & nb);

assign y = ~(x & x);

endmodule
