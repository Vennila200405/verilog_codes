module T_flipflop_sync(
    input clk,
    input reset,
    input en,
    input t,
    output reg q
);
always @(posedge clk)begin
    if (reset)
        q <= 1'b0;        
    else if (en)
    begin
        if (t)
            q <= ~q;      
        else
            q <= q;      
    end
    else
        q <= q;            
end
endmodule
