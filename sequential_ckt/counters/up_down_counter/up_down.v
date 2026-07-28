module up_down(input clk,rst,m,
output reg [2:0]out);
always@(posedge clk )begin
if(rst)
	out<=3'b000;
else
	begin
	if(m)
	   out<=out-1;
	else
	   out<=out+1;
	end
end
endmodule 
