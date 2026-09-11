module random;
integer num;
integer count;
initial begin
count=0;
while(count<5)
begin
num=($random %10)+1;
if(num%2!=0)
begin
	$display("num=%d ",num);
count=count+1;
end
end
$finish;
end
endmodule
