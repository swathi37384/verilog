module demux_1to2(input s,i,output y0,y1);
assign y0=~s&i;
assign y1=s&i;
endmodule
