module t_flipflop(
    input clk,
    input set,
    input reset,
    input t,
    output reg q
);

always @(posedge clk)
begin
    if(set)
        q <= 1'b1;
    else if(reset)
        q <= 1'b0;
    else if(t)
        q <= ~q;
    else
        q <= q;
end

endmodule
