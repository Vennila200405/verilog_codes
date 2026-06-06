module and_by_nand(a,b,c,y);
  input a,b;
  output c,y;
  assign c = ~(a & b);
  assign y = ~(c);
endmodule
