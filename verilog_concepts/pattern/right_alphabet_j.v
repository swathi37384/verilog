module right_alphabet_j;
integer i,j;
initial begin
for(i=1;i<=5;i=i+1)begin
for(j=1;j<=i;j=j+1)begin
	$write("%c",64+j);
end
$display("");
end
end
endmodule	
