module divide2(input clk,reset,
output reg clkout);
always@(posedge clk)begin
if(reset)
	clkout<=0;
else
	clkout<=~clkout;
end
endmodule

