module fulladd_using_half(input a,b,c,output sum,carry);
wire s1,c1,c2;
halfadder ha1(.a(a),.b(b),.sum(s1),.carry(c1));
halfadder ha2(.a(s1),.b(c),.sum(sum),.carry(c2));
assign carry=c1|c2;
endmodule 
