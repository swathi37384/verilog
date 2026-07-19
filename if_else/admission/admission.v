module ad(input [6:0]marks,
input [6:0]age);
always @(*) begin
if(marks>=60)
	begin
	if(age>=18)
		$display("Eligible");
	else
		$display("Age not eligible");
	end
else
	$display("Marks not eligible");
end
endmodule
