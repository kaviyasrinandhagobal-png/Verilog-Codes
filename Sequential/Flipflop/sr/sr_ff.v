module sr_ff(y,s,r,clk);
output reg y;
input s,r,clk;
always@(s,r,clk)
begin
y<=1'b0;
case({s,r,clk})
3'b000: y<=y;
3'b010: y<=y;
3'b100: y<=y; 
3'b110: y<=y;
3'b001: y<=y;
3'b011: y<=1'b0;    
3'b101: y<=1'b1;
3'b111: y<=1'bx;
endcase
end
endmodule 
