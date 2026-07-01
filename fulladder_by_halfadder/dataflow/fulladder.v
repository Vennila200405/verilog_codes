module Full_Adder(
    input a,
    input b,
    input cin,
    output sum,
    output reg cout
);

wire s1;
wire c1;
wire c2;

Half_Adder HA1(
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);

Half_Adder HA2(
    .a(s1),
    .b(cin),
    .sum(sum),
    .carry(c2)
);

always @(*) begin
    cout = c1 | c2;
end

endmodule
