module fullsub_using_half(input a,b,c,output d,bout);
wire d1,b1,b2;
half_sub hs1(.a(a),.b(b),.d(d1),.bout(b1));
half_sub hs2(.a(d1),.b(c),.d(d),.bout(b2));
assign bout=b1|b2;
endmodule  
