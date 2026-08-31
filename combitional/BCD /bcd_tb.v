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
