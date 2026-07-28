module t_to_sr(input s,r,clk,rst,
output q);
wire t;
assign t=(~q&s)|(q&r);
t_ff t1(.t(t),.clk(clk),.rst(rst),.q(q));
endmodule

module t_ff(input t,clk,rst,
output reg q);
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
