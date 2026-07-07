module ALU_4bit_tb;
reg [3:0]a,b;
reg [2:0]sel;
wire[7:0]c;

ALU_4bit DUT(
             .a(a),
             .b(b),
             .c(c),
             .sel(sel)
);
initial begin

$dumpfile("dump.vcd");
$dumpvars(0,ALU_4bit_tb);

$monitor("a=%b b=%b c=%b sel=%b",a,b,c,sel);

end
initial begin
a = 4'b0000;b = 4'b0010;

sel = 3'b000; #10
sel = #10 3'b001;
sel = #10 3'b010;#10
sel = 3'b011;#10
sel = 3'b100; #10
sel = 3'b101; #10
sel = 3'b110;#10
sel = 3'b111; #10
$finish;
end
endmodule
