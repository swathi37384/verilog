module comparator(input [1:0]a, 
output y0,y1,y2);
assign y0=~(a[1]^a[0]);
assign y1=a[1]&~a[0];
assign y2=~a[1]&a[0];
endmodule

