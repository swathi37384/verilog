module mod10(input clk ,rst,
output reg [3:0]count);
always@(posedge clk)begin
if(rst)
	count<=4'b0000;
else if(count==4'd9)
	count<=4'd0;
else
	count<=count+1;
end
endmodule
