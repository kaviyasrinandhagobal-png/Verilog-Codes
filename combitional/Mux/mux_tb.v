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



