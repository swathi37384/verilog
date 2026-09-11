module prime;
integer i,j,prime;
initial begin
for(i=2;i<100;i=i+1)begin
	prime=1;
	for(j=2;j<i;j=j+1)begin
		if(i%j==0)
			prime=0;
	end
	if(prime)
		$write("%0d ",i);
end
end
endmodule
	
