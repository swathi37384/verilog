module odd(input [3:0]a);
always @(*) begin
if(a%2==0)
	$display("even number");
else
	$display("odd number");
end
endmodule
