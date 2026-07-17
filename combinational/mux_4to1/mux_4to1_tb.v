module mux_4to1_tb;
reg [1:0]s;
reg [3:0]i;
wire y;
mux_4to1 uut(.s(s),.i(i),.y(y));
initial begin
$monitor("s=%b i=%b y=%b",s,i,y);
s=2'b00;i=4'b1001;#10;
s=2'b01;i=4'b1001;#10; 
s=2'b10;i=4'b1011;#10; 
s=2'b11;i=4'b1001;#10;
$finish;
end
endmodule 
