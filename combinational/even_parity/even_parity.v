module even_parity(input [2:0]a,output p);
assign p=a[2]^a[1]^a[0];
endmodule
