module t_to_jk(input j,k,clk ,rst,
output reg q);
wire t;
assign t=(~q&j)|(q&k);
always@(posedge clk or negedge rst)begin
if(!rst)
	q<=1'b0;
else
	begin
	if(t)
	   q<=~q;
	else
	   q<=q;
	end
end
endmodule
