module d_to_t(input t,clk,rst,
output reg q);
wire d;
assign d=q^t;
always@(posedge clk or negedge rst)begin
if(!rst)
	q<=1'b0;
else
	q<=d;
end
endmodule
