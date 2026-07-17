module demux_1to2_tb;
reg s,i;
wire y0,y1;
demux_1to2 uut(.s(s),.i(i),.y0(y0),.y1(y1));
initial begin
$monitor("s=%b i=%b | y0=%b y1=%b",s,i,y0,y1);
i=0;s=0;#10;
i=0;s=1;#10; 
i=1;s=0;#10; 
i=1;s=1;#10;
$finish;
end
endmodule  
