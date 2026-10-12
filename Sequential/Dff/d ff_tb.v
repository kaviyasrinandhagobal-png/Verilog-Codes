`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 17:05:08
// Design Name: 
// Module Name: d ff_tb
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


module d_ff_tb;
wire q;
reg d,clk;
integer i;
d_ff uut (.d(d),.clk(clk),.q(q));
initial
begin
for(i=0;i<5;i=i+1)
begin
d= $random;
clk= $random;
#10;
$display("%d %d %d",clk,d,q);
end
$finish;
end 
endmodule