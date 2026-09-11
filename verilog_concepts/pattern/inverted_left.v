module inverted_left;
integer i,j,k,n;
initial begin
n=5;
for(i=1;i<=n;i=i+1)begin
	for(k=1;k<=i-1;k=k+1)begin
		$write(" ");
	end
	for(j=1;j<=n-i+1;j=j+1)begin
		$write("*");
	end
	$display("");
end
end
endmodule
