module decoder_2to4_tb;
reg [1:0]i;
wire [3:0]y;
decoder_2to4 uut(.i(i),.y(y));
initial begin
$monitor("i=%b y=%b",i,y);
i=2'b00;#10;
i=2'b01;#10; 
i=2'b10;#10; 
i=2'b11;#10;
$finish;
end
endmodule 
