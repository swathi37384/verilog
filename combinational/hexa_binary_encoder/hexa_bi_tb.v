module hexa_bi_tb;
reg [15:0]h;
wire [3:0]out;
integer i;
hexa_bi uut(.h(h),.out(out));
initial begin
$monitor("h=%b bcd=%b",h,out);
h=16'b0000000000000001;#10;
h=16'b0000000100000000;#10;
h=16'b0000010000000000;#10;
h=16'b0010000000000000;#10;
h=16'b1000000000000001;#10;
#10;$finish;
end
endmodule
