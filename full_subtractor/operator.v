module full_subtractor(
input a,b,c,
output diff,borrow
);
assign{borrow,diff}=a-b-c;
endmodul
