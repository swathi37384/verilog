module mux_tb;
reg [1:0]i;
reg s;
wire y;
mux uut(.i(i),.s(s),.y(y));
initial begin
$monitor("i=%b s=%b y=%b",i,s,y);
i=2'b00;s=0;#10;
i=2'b01;s=1;#10; 
i=2'b10;s=1;#10; 
i=2'b11;s=0;#10; 
$finish;
end
endmodule
