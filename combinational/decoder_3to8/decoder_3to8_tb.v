module decoder_3to8_tb;
reg [2:0]i;
wire [7:0]y;
decoder_3to8 uut(.i(i),.y(y));
initial begin
$monitor("i=%b y=%b",i,y);
i=3'b000;#10;
i=3'b001;#10; 
i=3'b010;#10; 
i=3'b011;#10;
i=3'b100;#10;
i=3'b101;#10;
i=3'b110;#10;
i=3'b111;#10;
$finish;
end
endmodule
