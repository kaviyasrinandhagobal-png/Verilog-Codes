`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 16:54:15
// Design Name: 
// Module Name: d ff
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
   
