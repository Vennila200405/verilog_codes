module not_by_nand(
input A,
output y
);
assign y=~(A&A);
endmodule
