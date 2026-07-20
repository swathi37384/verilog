module k_5(input a,b,c,d,
output out);
assign out=(~b&~d)|(~a&c)|(b&c&d);
endmodule
