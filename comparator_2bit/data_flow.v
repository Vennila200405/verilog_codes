module comparator_2bit(
input [1:0]a,b,
output eq,gt,lt
);
assign eq= (a==b);
assign gt= (a>b);
assign lt= (a<b);
endmodule
