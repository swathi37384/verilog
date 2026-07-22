module rel_tb;
reg [7:0]a,b;
integer i;
rel uut(.a(a),.b(b));
initial begin
$monitor("a=%d b=%d",a,b);
for(i=0;i<10;i=i+1)
begin
	a=$random%256;
	b=$random%256;
	#10;
end
$finish;
end
endmodule
