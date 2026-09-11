module grade(input [6:0]a);
always @(*) begin
if(a>=90 && a<=100)
	$display("A grade");
else if(a>=80 && a<=89)
	$display("B grade");
else if(a>=70 && a<=79)
	$display("C grade");
else if(a>=60 && a<=69)
	$display("D grade");
else
	$display("Fail");
end
endmodule
