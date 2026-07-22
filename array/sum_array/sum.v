module sum;
reg [3:0]arr[4:0];
reg [5:0]sum;
integer i;
always@(*) begin
sum=0;
for(i=0;i<5;i=i+1)
begin
sum=sum+arr[i];
end
end
initial begin
$monitor("sum=%d",sum);
arr[0]=4'd10;
arr[1]=4'd2;
arr[2]=4'd11;
arr[3]=4'd8;
arr[4]=4'd5;
#1;$finish;
end
endmodule

