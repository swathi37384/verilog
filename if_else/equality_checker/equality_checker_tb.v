module equality_tb;
reg [3:0]a,b;
wire y;
equality uut(.a(a),.b(b),.y(y));
initial begin
$monitor("a=%b b=%b y=%b",a,b,y);
a=4'b0000;b=4'b0000;#10;
a=4'b0000;b=4'b1101;#10; 
a=4'b1111;b=4'b1111;#10;  
$finish;
end
endmodule
