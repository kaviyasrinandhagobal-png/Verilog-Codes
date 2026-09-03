`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 17:18:38
// Design Name: 
// Module Name: ss_ff_tb
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


module ss_ff_tb;
wire y;
reg s,r,clk;
integer i;
sr_ff uut (.y(y),.s(s),.r(r),.clk(clk));
initial
begin
for(i=0;i<6;i=i+1) 
begin
s=$random;
r=$random;
clk=$random;
#10;       
$display("%d %d %d %d",s,r,clk,y);
end
$finish;
end
endmodule
  