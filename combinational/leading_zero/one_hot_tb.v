module one_hot_tb;
reg [7:0]a;
one_hot uut(.a(a));
initial begin
$monitor("a=%b",a);
a=8'b00001000;#10;
a=8'b10000000;#10;
a=8'b11111111;#10;
a=8'b00000000;#10;
$finish;
end
endmodule
