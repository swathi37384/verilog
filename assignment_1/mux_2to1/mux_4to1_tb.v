module mux_4_tb;
reg s1,s0,i0,i1,i2,i3;
wire y;
mux_4 uut(.s1(s1),.s0(s0),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.y(y));
initial begin
$monitor("s1=%b s0=%b i0=%b i1=%b i2=%b i3=%b y=%b",s1,s0,i0,i1,i2,i3,y);
s1=0;s0=0;i0=1;i1=0;i2=0;i3=0;#10;
s1=0;s0=1;i0=0;i1=1;i2=0;i3=0;#10; 
s1=1;s0=0;i0=0;i1=0;i2=0;i3=1;#10; 
s1=1;s0=1;i0=1;i1=0;i2=0;i3=1;#10; 
$finish;
end
endmodule
