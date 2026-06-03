module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w,x,y,z; 
xor(w,a,b);
xor(sum,c,w);
and(x,a,b);
and(y,b,c);
and(z,a,c);
or(carry,x,y,z);
endmodule
