`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2026 14:44:01
// Design Name: 
// Module Name: mux4_1
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

module mux(y,d,s);
output y;
input[9:0]s;
input[15:0]d;
wire [3:0]w;  
mux4_1 mux1(w[0],d[3:0],s[1:0]); 
mux4_1 mux2(w[1],d[7:4],s[3:2]);
mux4_1 mux3(w[2],d[11:8],s[5:4]);
mux4_1 mux4(w[3],d[15:12],s[7:6]);
mux4_1 mux5(y,w[3:0],s[9:8]);
endmodule
module mux4_1(y,d,s);
output y;
input[1:0]s; 
input[3:0]d;
wire[5:0]w;
not g1(w[0],s[0]);
not g2(w[1],s[1]);
and g3(w[2],w[0],w[1],d[0]);
and g4(w[3],w[0],s[1],d[1]);
and g5(w[4],s[0],w[1],d[2]);
and g6(w[5],s[0],s[1],d[3]);
or g7(y,w[2],w[3],w[4],w[5]);
endmodule
