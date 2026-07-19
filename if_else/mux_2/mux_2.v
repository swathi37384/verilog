module mux(input [1:0] i,
input s,
output reg y);
always @(*) begin
if(s)
	y=i[1];
else
	y=i[0];
end
endmodule

