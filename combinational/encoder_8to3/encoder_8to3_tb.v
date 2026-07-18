module encoder_8to3_tb;
reg [7:0]i;
wire [2:0]y;
encoder_8to3 uut(.i(i),.y(y));
initial begin
$monitor("i=%b y=%b",i,y);
i=8'b00000001;#10;
i=8'b00000010;#10; 
i=8'b00000100;#10; 
i=8'b00001000;#10; 
i=8'b00010000;#10; 
i=8'b00100000;#10; 
i=8'b01000000;#10; 
i=8'b10000000;#10; 
$finish;
end 
endmodule
