module d_latch(input d,rst,en,
output reg q);
always@(en or rst or d)
begin
if(!rst)
	q<=0;
else
	if(en)
		q<=d;
end
endmodule
