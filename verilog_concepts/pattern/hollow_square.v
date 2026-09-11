module hollow_square;
integer i,j,n;
initial begin
n=7;
for(i=1;i<=n;i=i+1)begin
	for(j=1;j<=n;j=j+1)begin
		if(i==1||i==n||j==1||j==n)
			$write("*");
		else
			$write(" ");
		end
	$display("");
end
end
endmodule
