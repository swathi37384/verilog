module left;
integer i,j,k,n;
initial begin
n=5;
for(i=1;i<=n;i=i+1)begin
	for(j=1;j<=n-i;j=j+1)begin
		$write(" ");
	end
	for(k=1;k<=i;k=k+1)begin
		$write("*");
	end
	$display("");
end
end
endmodule
