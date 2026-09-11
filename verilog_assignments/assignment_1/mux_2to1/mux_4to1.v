module mux_4(input s1,s0,i0,i1,i2,i3,
output y);
wire w1,w2;
mux m1(.s(s0),.i0(i0),.i1(i1),.y(w1));
mux m2(.s(s0),.i0(i2),.i1(i3),.y(w2)); 
mux m3(.s(s1),.i0(w1),.i1(w2),.y(y));
endmodule 
