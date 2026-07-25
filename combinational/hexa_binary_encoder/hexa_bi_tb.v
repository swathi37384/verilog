module hexa_bi_tb;
reg [3:0]h;
wire [3:0]out;
integer i;
hexa_bi uut(.h(h),.out(out));
initial begin
$monitor("h=%0d bcd=%b",h,out);
for(i=0;i<16;i=i+1)
begin
h=i;
#10;
end
#10;$finish;
end
endmodule
