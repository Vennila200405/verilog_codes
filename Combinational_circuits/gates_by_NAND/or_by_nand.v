module or_by_nand(a,b,na,nb,y);
  input a,b;
  output na,nb,y;
  assign na = ~(a);
  assign nb = ~(b);
  assign y  = ~(na & nb);
endmodule
