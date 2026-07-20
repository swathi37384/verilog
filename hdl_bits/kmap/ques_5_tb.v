module k_5_tb;
reg a,b,c,d;
wire out1,out2;
k_3 uut(.a(a),.b(b),.c(c),.d(d),.out1(out1),.out2(out2));
initial begin
$monitor("a=%b b=%b c=%b d=%d out1=%b out2=%b",a,b,c,d,out1,out2);
a=0;b=0;c=0;d=0;#10;
a=0;b=0;c=0;d=1;#10; 
a=0;b=0;c=1;d=0;#10; 
a=0;b=0;c=1;d=1;#10; 
a=0;b=1;c=0;d=0;#10; 
a=0;b=1;c=0;d=1;#10; 
a=0;b=1;c=1;d=0;#10; 
a=0;b=1;c=1;d=1;#10; 
a=1;b=0;c=0;d=0;#10; 
a=1;b=0;c=0;d=1;#10; 
a=1;b=0;c=1;d=0;#10; 
a=1;b=0;c=1;d=1;#10; 
a=1;b=1;c=0;d=0;#10; 
a=1;b=1;c=0;d=1;#10; 
a=1;b=1;c=1;d=0;#10; 
a=1;b=1;c=1;d=1;#10; 
$finish;
end
endmodule
