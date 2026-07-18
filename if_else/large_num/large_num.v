module large_num(input [3:0]a,b,
output reg [3:0]y);
always @(*) begin
if(a>b)
	y=a; //a is larger
else
	y=b; //b is larger
end
endmodule
