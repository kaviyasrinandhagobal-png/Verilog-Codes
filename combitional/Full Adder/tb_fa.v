module fa_tb;
reg[3:0]a;
reg[3:0]b; 
reg cin; 
wire[3:0]s;
wire cy;
fa_4 uut(".a(a),.b(b),.cin(cin),.s(s),.cy(cy)"); 
initial
begin
a = 4'b0010;
b = 4'b0001;
cin = 0;
#10
a = 4'b0001;
b = 4'b0001;
cin = 0;
#10
a = 4'b1111;
b = 4'b0001;
cin=1; 
#10 
end
initial
begin
$display("time,a,b,s,cin,s,cy"); 
$monitor("%0t,%d,%d,%d,%d,%d",$time,a,b,cin,s,cy);#50
$finish;
end  
endmodule 
