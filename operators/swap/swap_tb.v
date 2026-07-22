module swap_tb;
reg [3:0]a,b;
wire [4:0]x,y;
swap uut(.a(a),.b(b),.x(x),.y(y));
initial begin
$monitor("Before swapping...a=%d b=%d after swapping...x=%d y=%d",a,b,x,y);
a=4'd10;b=4'd5;#10;
a=4'd4;b=4'd11;#10;
a=4'd0;b=4'd15;#10;
$finish;
end
endmodule
