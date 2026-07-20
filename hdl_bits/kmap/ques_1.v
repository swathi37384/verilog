module k_1(input a,b,c,d,
output out);
assign out=a|(c&~b);
endmodule
