module t_to_d(input d,clk ,rst,
output reg q);
wire t;
assign t=q^d;
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
