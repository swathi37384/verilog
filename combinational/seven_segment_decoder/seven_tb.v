module seven_tb;
reg [3:0]b;
wire[6:0]seg;
seven uut(.b(b),.seg(seg));
initial begin
$monitor("b=%d seg=%b",b,seg);
b=4'd3;
#5 b=4'd2;
#5 b=4'd8;
#5 b=4'd10;
$finish;
end
endmodule
