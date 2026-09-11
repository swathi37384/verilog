module logical_tb;
reg [3:0]a,b;
reg [1:0]sel;
wire y;
logical uut(.a(a),.b(b),.sel(sel),.y(y));
initial begin
$monitor("a=%b b=%b sel=%b y=%b",a,b,sel,y);
a=1100;b=1010;sel=00;#10;
a=1100;b=1010;sel=01;#10;
a=1100;b=1010;sel=10;#10;
a=1100;b=0000;sel=01;#10;
$finish;
end
endmodule
