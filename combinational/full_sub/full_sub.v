module full_sub(input a,b,c,output d,bout);
assign d=a^b^c;
assign bout=(~a&b)|(b&c)|(~a&c);
endmodule
