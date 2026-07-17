module demux_1to4(input i,
input [1:0]s,
output y0,y1,y2,y3);
assign y0=i&~s[0]&~s[1];
assign y1=i&s[0]&~s[1];
assign y2=i&~s[0]&s[1];
assign y3=i&s[0]&s[1];
endmodule
