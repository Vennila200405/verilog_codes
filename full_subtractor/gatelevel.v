module full_subtractor(
input a,b,c,
output diff,borrow
);
wire v,w,x,y,z;
xor(v,a,b);
xor(diff,v,c);
not(w,a);
and(x,w,b);
and(y,b,c);
and(z,w,c);
or(borrow,x,y,z);
endmodule
