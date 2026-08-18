`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 11:54:56
// Design Name: 
// Module Name: multiplier
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


module multiplier(p0,p1,a,b);
output reg p0,p1;
input [1:0] a;
input b;
always @(a,b)
begin 
case ({a,b})
3'b000: {p1,p0} = 2'b00;
3'b001: {p1,p0} = 2'b00;
3'b010: {p1,p0} = 2'b00;
3'b011: {p1,p0} = 2'b01;
3'b100: {p1,p0} = 2'b00;
3'b101: {p1,p0} = 2'b10;
3'b110: {p1,p0} = 2'b00;
3'b111: {p1,p0} = 2'b11;
endcase
end 
endmodule
