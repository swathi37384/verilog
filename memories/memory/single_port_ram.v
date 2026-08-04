module single(input clk,we,
input [2:0]add,
input [3:0]data_in,
output reg [3:0]data_out);
reg [3:0]mem[0:4];
always@(posedge clk)begin
if(we)
	mem[add]<=data_in;
else
	data_out<=mem[add];
end
endmodule


