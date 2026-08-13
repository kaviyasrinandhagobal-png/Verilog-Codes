module fs(diff,borrow,a,b,bin);
output borrow;
output[3:0]diff;
input[3:0]a,b;  
input bin;
wire[2:0]c;
fs_4 diff0(diff[0],c[0],a[0],b[0],bin);
fs_4 diff1(diff[1],c[1],a[1],b[1],c[0]); 
fs_4 diff2(diff[2],c[2],a[2],b[2],c[1]);
fs_4 diff3(diff[3],borrow,a[3],b[3],c[2]);
endmodule

module fs_4 (diff,borrow,a,b,bin);
output diff,borrow;
input a,b,bin;
assign diff = a^b^bin;
assign borrow = ~a&b|((~a^b)&bin);
endmodule
