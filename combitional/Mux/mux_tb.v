`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2026 16:59:01
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
wire y;
reg[15:0]d;
reg [9:0]s;
integer i;
mux uut(.y(y),.d(d),.s(s));
initial
begin
for(i=0;i<15;i=i+1)begin
d = $random;
s = $random;
#10;  
end
$finish;
end
initial 
begin
$display("%b,%b,%b",y,d,s);
end
endmodule 



