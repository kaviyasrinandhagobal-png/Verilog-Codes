module d_ff (q,d,clk);
output reg q;
input d;
input clk;
always@(clk,d)
begin
case ({clk,d})
2'b00: q=1'b0;
2'b01: q=1'b0;
2'b10: q=1'b0;
2'b11: q=1'b1;
endcase
end
endmodule
   
