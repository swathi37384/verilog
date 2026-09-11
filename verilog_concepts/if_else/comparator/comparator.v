module comp(input [3:0]a,b);
always @(*) begin
if(a>b)	
	$display("a is greater");
else if(a==b)
	$display("a and b are equal");
else
	$display("b is greater");
end 
endmodule
