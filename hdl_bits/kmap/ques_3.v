module k_3(input a,b,c,d,
output out1,out2);
assign out1=(c&d)|(~a&~b&c);
assign out2=(c)&(~b|d)&(~a|d);
endmodule
