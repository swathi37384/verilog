module mux_2to1(input s,i1,i0, output y);
assign y=(~s&i0)|(s&i1);
endmodule
