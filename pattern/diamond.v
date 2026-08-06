module diamond;
integer i,j,k,n;
initial begin
n=4;
for(i=1;i<2*n;i=i+1)begin
	if(i<=n) begin
		for(j=1;j<=n-i;j=j+1)begin
		$write(" ");
		end
		for(k=1;k<=i;k=k+1)begin
		$write("* ");
		end
		$display("");
	end
	else begin
		for(j=1;j<=i-n;j=j+1)begin
		$write(" ");
		end
		for(k=1;k<=2*n-i;k=k+1)begin
		$write("* ");
		end
  		$display("");
       end
end
end
endmodule

