module odd_tb;
reg [3:0]a;
integer i;
odd uut(.a(a));
initial begin
$monitor("a=%d",a);
for(i=0;i<10;i=i+1)
begin
	a=$random%16;
	#10;
end
$finish;
end
endmodule
