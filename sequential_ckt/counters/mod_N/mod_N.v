module modn #(parameter MOD=10,WIDTH=4)
(input clk ,rst,
output reg [WIDTH-1:0]count);
always@(posedge clk)begin
if(rst)
	count<=0;
else if(count==MOD-1)
	count<=0;
else
	count<=count+1;
end
endmodule
