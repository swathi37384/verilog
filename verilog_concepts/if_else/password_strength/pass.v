module pass(input [3:0]len);
always @(*) begin
if(len<6)
	$display("Weak");
else if(6<=len && len<=9)
	$display("Medium");
else
	$display("Strong");
end
endmodule
