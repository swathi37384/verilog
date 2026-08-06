module inverted_right;
integer i,j,n;
initial begin
n=5;
for(i=1;i<=n;i=i+1)begin
	for(j=1;j<=n-i+1;j=j+1)begin
		$write("*");
	end
	$display("");
end
end
endmodule
