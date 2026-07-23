module ripple(input [3:0]a,b,
input c,
output [3:0]sum,
output co);
wire c1,c2,c3;
fulladd_using_half fa1(.a(a[0]),.b(b[0]),.c(c),.sum(sum[0]),.carry(c1));
fulladd_using_half fa2(.a(a[1]),.b(b[1]),.c(c1),.sum(sum[1]),.carry(c2));
fulladd_using_half fa3(.a(a[2]),.b(b[2]),.c(c2),.sum(sum[2]),.carry(c3));
fulladd_using_half fa4(.a(a[3]),.b(b[3]),.c(c3),.sum(sum[3]),.carry(co));
endmodule
