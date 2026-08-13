module fs_tb;
reg[3:0]a;
reg[3:0]b;
reg bin;
wire[3:0]diff;
wire borrow;
integer i;
fs uut (.a(a),.b(b),.bin(bin),.diff(diff),.borrow(borrow));
initial
begin
for(i=0;i<15;i=i+1) begin
a = $random;
b = $random;
bin = $random;
#10;
end
$finish;
end
endmodule
