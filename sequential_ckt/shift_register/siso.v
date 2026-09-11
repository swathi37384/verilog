module siso(input clk,rst,in,
output reg [3:0]q,
output q_out);
always@(posedge clk)begin
if(rst) begin
	q<=0;
	end
else begin
	q<={in,q[3:1]};
end
end
assign q_out=q[0];
endmodule
	
