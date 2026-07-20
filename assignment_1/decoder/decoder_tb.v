module decoder_tb;
reg i0,i1;
wire y0,y1,y2,y3;
decoder uut(.i0(i0),.i1(i1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
$monitor ("i1=%b i0=%b y0=%b y1=%b y2=%b y3=%b ",i1,i0,y0,y1,y2,y3);
i1=0; i0=0;#10;
i1=0; i0=1;#10;   
i1=1; i0=0;#10;   
i1=1; i0=1;#10;
$finish;
end
endmodule   

