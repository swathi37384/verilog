module priority_tb;
reg [3:0]a,b,c,d;
reg [1:0]sel;
wire [3:0]y;
integer i;
priority uut(.a(a),.b(b),.c(c),.d(d),.sel(sel),.y(y));
initial begin
$monitor("a=%0d b=%0d c=%0d  d=%0d sel=%0d y=%d",a,b,c,d,sel,y);
a<=0;
b<=0;
c<=0;
d<=0;
sel<=0;
for(i=0;i<4;i=i+1)
begin
#10;
a=i;
b=i;
c=i;
d=i;
sel=i;
end

#10;$finish;
end
endmodule
