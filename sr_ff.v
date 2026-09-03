`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 16:48:28
// Design Name: 
// Module Name: sr_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
