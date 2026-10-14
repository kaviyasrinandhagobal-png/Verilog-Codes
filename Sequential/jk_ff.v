`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 17:30:07
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(q,j,k,clk);
output reg q;
input j,k,clk;
always@(j,k,clk)
begin
case({j,k,clk})
3'b000: q = q;
3'b001: q = q;
3'b011: q = 1'b0;
3'b101: q = 1'b1; 
3'b111: q = ~q;
endcase
end
endmodule
