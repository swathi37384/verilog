module pass_tb;
reg [3:0]a;
pass uut(.len(a));
initial begin
$monitor("len=%d",a);
a=4'd11;#10;
a=4'd7;#10;
a=4'd2;#10;
$finish;
end
endmodule
