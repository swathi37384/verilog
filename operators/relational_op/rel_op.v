module rel(input [7:0] a,b);
always @(*) begin
if(a==b)
	$display("a and b are equal");
else if (a>b)
	$display("a is greater than b");
else
	$display("b is greater than a");
end
endmodule
