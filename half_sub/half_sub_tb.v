module half_sub_tb;
reg a,b;
wire d,bout;
half_sub uut(.a(a),.b(b),.d(d),.bout(bout));
initial begin
$monitor("a=%b b=%b | d=%b bout=%b",a,b,d,bout);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end 
endmodule 
