module sr_to_d(input d,clk ,rst,
output reg q);
wire s,r;
assign s=d;
assign r=~d;
always@(posedge clk or negedge rst)begin
if(!rst)
	q<=1'b0;
else
begin
	case({s,r})
		2'b00 :q<=q;
		2'b01 :q<=1'b0;
		2'b10 :q<=1'b1;
		2'b11 :q<=1'bx;
	endcase
end
end
endmodule
