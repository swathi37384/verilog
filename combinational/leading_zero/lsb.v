module lsb(input [7:0]a,output reg [3:0]count);
integer i;
reg flag;
always @(*) begin
flag=0;
count=0;
for(i=0;i<8;i=i+1)
begin
	if(!flag)
	begin
		if(a[i]==0)
		count=count+1;
		else
		flag=1;
	end
end
end
endmodule
