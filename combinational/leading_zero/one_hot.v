module one_hot(input [7:0]a);
integer i;
integer count;
always @(*) begin
count=0;
for(i=0;i<8;i=i+1)
begin
	if(a[i]==1)
		count=count+1;
end
if(count==1)
	$display("valid");
else
	$display("invalid");
end
endmodule	
	

