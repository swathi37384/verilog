module jk_to_t(input t,clk,rst,
output reg q);
wire j,k;
assign j=t;
assign k=t;
always@(posedge clk or negedge rst)begin
	if(!rst)
		q<=1'b0;
	else
	begin
case({j,k})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=~q;
endcase
end
end
endmodule
