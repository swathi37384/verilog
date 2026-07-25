module oct_bi_tb;
reg [7:0]oct;
wire [2:0]out;
oct_bi uut(.oct(oct),.out(out));
initial begin
$monitor("oct=%b bcd=%b",oct,out);
oct=8'b00000001;#10;
oct=8'b00001000;#10;
oct=8'b01000000;#10;
oct=8'b00010001;#10;
oct=8'b10000000;#10;
#10;$finish;
end
endmodule
