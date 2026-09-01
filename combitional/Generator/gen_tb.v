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
