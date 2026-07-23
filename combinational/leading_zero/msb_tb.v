module msb_tb;
reg [7:0]a;
wire [3:0]count;
msb uut(.a(a),.count(count));
initial begin
$monitor("a=%b count=%d",a,count);
a=8'b00010110;#10;
a=8'b11001000;#10;
$finish;
end 
endmodule
