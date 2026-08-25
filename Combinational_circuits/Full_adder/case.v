module full_adder(
input a,b,c,
output reg sum,carry
);
always @(*)begin

case({a,b,c})
3'b000: {sum,carry}= 2'b00;
3'b001: {sum,carry}= 2'b10;
3'b010: {sum,carry}= 2'b10;
3'b011: {sum,carry}= 2'b01;
3'b100: {sum,carry}= 2'b10;
3'b101: {sum,carry}= 2'b01;
3'b110: {sum,carry}= 2'b01;
3'b111: {sum,carry}= 2'b11;
endcase
end
endmodule
