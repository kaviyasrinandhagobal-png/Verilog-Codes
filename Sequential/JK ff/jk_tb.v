`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 20:13:01
// Design Name: 
// Module Name: jk_tb
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


module jk_tb;
reg j,k,clk;
wire q;
integer i;
jk_ff uut (.q(q),.j(j),.k(k),.clk(clk));
initial
begin
for (i=0;i<6;i=i+1)
begin
j=$random;
k=$random;
clk=$random;
#10;
$display("%d %d %d %d",clk,j,k,q);
end
$finish;
end
endmodule 
