module comparator_tb;
reg [1:0]a;
wire y0,y1,y2;
comparator uut(.a(a),.y0(y0),.y1(y1),.y2(y2));
initial begin
$monitor("a=%b y0=%b y1=%b y2=%b",a,y0,y1,y2);
a=2'b00;#10;
a=2'b01;#10; 
a=2'b10;#10; 
a=2'b11;#10;
$finish;
end 
endmodule
