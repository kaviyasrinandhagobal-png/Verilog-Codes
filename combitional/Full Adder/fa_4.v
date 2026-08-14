
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2026 22:28:19
// Design Name: 
// Module Name: fa_4
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

module fa(s,cy,a,b,cin);
output cy;
output[3:0]s;
input[3:0]a,b;  
input cin;
wire[2:0]c;
fa_4 s0(s[0],c[0],a[0],b[0],cin);
fa_4 s1(s[1],c[1],a[1],b[1],c[0]); 
fa_4 s2(s[2],c[2],a[2],b[2],c[1]);
fa_4 s3(s[3],cy,a[3],b[3],c[2]);
endmodule

module fa_4(s,cy,a,b,cin);   
output s,cy;
input a,b,cin; 
assign s = a^b^cin;
assign cy=a&b|(a^b)&cin;
endmodule
