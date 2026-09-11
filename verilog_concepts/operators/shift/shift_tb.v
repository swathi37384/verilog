module shift;
output reg [6:0]y;
integer i;
initial begin
$monitor("y=%d",y);
for(i=0;i<=10;i=i+1)
begin
	y=i<<2;
#10;
end
$finish;
end
endmodule
