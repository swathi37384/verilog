module d_to_sr(input s,r,clk,rst,
output reg q);
wire d;
assign d=s|(q&~r);
always@(posedge clk or negedge rst)begin
if(!rst)
	q<=1'b0;
else
	q<=d;
end
endmodule
