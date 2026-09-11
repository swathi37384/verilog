module large_tb;
reg [3:0]a,b,c;
wire [3:0]y;
large_3 uut(.a(a),.b(b),.c(c),.y(y));
initial begin
$monitor("a=%b b=%b c=%b y=%b",a,b,c,y);
a=4'b1010;b=4'b0100;c=4'b1111;#10;
a=4'b1010;b=4'b1100;c=4'b0011;#10; 
a=4'b0010;b=4'b0100;c=4'b1111;#10; 
a=4'b1010;b=4'b0101;c=4'b0000;#10;
$finish;
end
endmodule 
