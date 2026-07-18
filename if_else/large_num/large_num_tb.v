module large_num_tb;
reg [3:0]a,b;
wire [3:0]y;
large_num uut(.a(a),.b(b),.y(y));
initial begin
$monitor("a=%b b=%b y=%b",a,b,y);
a=4'b0000;b=4'b1111;#10;
a=4'b1100;b=4'b1010;#10; 
a=4'b0100;b=4'b1001;#10; 
a=4'b0001;b=4'b0101;#10;
$finish;
end
endmodule
 
