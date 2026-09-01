`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2026 23:15:26
// Design Name: 
// Module Name: gen_tb
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


module gen_tb;
reg a,b,c;
wire p;
even uut(.p(p),.a(a),.b(b),.c(c));
initial
begin
a = 1'b0; 
b = 1'b0;
c= 1'b1;
#10;
$monitor("%b,%b,%b,%b",a,b,c,p);
$finish;
end
endmodule
