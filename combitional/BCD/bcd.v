module bcd(y,c,s);
    input  c;
    input  [3:0] s;
    output y;
assign y = c | (s[2] & s[1]) | (s[3] & s[1]);
endmodule
