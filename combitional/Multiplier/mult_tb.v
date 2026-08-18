`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 17:14:02
// Design Name: 
// Module Name: mult_tb
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
/////////////////////////////////////////////////////////////////////////////////
module mult_tb;
reg [1:0]a;
reg b;
wire p0,p1;
integer i;
multiplier uut (.a(a),.b(b),.p0(p0),.p1(p1));
initial
begin
for (i=0;i<10;i=i+1)
begin
a= $random;
b= $random; 
#10;
 $display("%b   %b    %b   %b", a, b, p1, p0);
end
$finish;
end 
endmodule 
