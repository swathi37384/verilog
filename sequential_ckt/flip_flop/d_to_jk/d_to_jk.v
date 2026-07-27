module d_to_jk(input j,k,clk,rst,
output reg q);
wire d;
assign d=(~q&j)|(q&~k);
always@(posedge clk or negedge rst)begin
if(!rst)
	q<=1'b0;
else
	q<=d;
end
endmodule
