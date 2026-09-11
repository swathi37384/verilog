module t_ff(input t,rst,clk,
output reg q);
always@(posedge clk or negedge rst)
begin
if(!rst)
	q<=0;
else
	begin
	if(t)
		q<=~q;
	else
		q<=q;
	end
end
endmodule
