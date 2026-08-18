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
