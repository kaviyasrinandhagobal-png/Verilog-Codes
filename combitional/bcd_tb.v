`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2026 22:54:45
// Design Name: 
// Module Name: bcd_tb
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


module bcd_tb;
wire y;
reg c;
reg [3:0]s;
bcd uut(.y(y),.c(c),.s(s));
initial
begin
s = 4'b0000; 
c = 1;
#10; 
$display("%b,%b,%b",y,c,s);
$finish;
end
endmodule
