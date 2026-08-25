module comparator_2bit_tb;
reg [1:0]a,b;
wire eq,gt,lt;
comparator_2bit DUT(
                   .a(a),
                   .b(b),
                   .eq(eq),
                   .gt(gt),
                   .lt(lt)
);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

$monitor("a=%b b=%b eq=%b gt=%b lt=%b",a,b,eq,gt,lt );
end
initial begin 
a=0;b=0; #10
a=0;b=1; #10
a=1;b=0; #10
 
$finish;
end
endmodule
