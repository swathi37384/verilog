module downcounter(input clk,rst,
output reg [3:0]out);
always@(posedge clk or negedge rst) begin
if(!rst)
	out<=4'b1111;
else
	out<=out-1;
end
endmodule
