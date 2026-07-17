module demux_1to4_tb;
reg i;
reg [1:0]s;
wire y0,y1,y2,y3;
demux_1to4 uut(.i(i),.s(s),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
$monitor("i=%b s=%b y0=%b y1=%b y2=%b y3=%b",i,s,y0,y1,y2,y3);
i=1;s=2'b00;#10;
i=1;s=2'b01;#10; 
i=1;s=2'b10;#10; 
i=1;s=2'b11;#10;
i=0;s=2'b00;#10;
i=0;s=2'b01;#10;
i=0;s=2'b10;#10;
i=0;s=2'b11;#10;
$finish;
end
endmodule      
