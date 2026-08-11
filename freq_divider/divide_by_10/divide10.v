module divide10(input clk,reset,
output reg clkout);
reg [2:0]count;
always@(posedge clk)begin
if(reset) begin
	clkout<=0;
	count<=0;
end
else if(count==4)begin
	count<=0;
	clkout<=~clkout;
end
else
	count<=count+1'b1;
end
endmodule
