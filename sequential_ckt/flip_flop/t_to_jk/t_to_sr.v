module t_to_sr(input s,r,clk ,rst,
output reg q);
wire t;
assign t=(~q&s)|(q&r);
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
