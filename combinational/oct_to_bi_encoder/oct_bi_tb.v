module oct_bi_tb;
reg [2:0]oct;
wire [2:0]out;
integer i;
oct_bi uut(.oct(oct),.out(out));
initial begin
$monitor("oct=%0d bcd=%b",oct,out);
for(i=0;i<9;i=i+1)
begin
oct=i;
#10;
end
#10;$finish;
end
endmodule
