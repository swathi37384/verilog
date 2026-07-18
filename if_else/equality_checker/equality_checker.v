module equality(input [3:0]a,b,
output reg y);
always @(*) begin
if(a==b)
	y=1'b1; //a and b are equal
else
	y=1'b0; //a and b are not equal
end
endmodule
