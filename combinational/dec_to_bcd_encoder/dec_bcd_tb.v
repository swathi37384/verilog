module dec_bcd_tb;
reg [3:0]d;
wire [3:0]out;
integer i;
dec_bcd uut(.d(d),.out(out));
initial begin
$monitor("d=%0d bcd=%b",d,out);
for(i=0;i<11;i=i+1)
begin
d=i;
#10;
end
#10;$finish;
end
endmodule
