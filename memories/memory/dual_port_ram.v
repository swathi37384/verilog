module dual(input clk,
input we1,
input [2:0]add1,
input [3:0]data_1,
output reg [3:0]data_out1,
input we2,
input [2:0]add2,
input [3:0]data_2,
output reg [3:0]data_out2);


reg [3:0]mem[0:4];
always@(posedge clk)begin
if(we1)
	mem[add1]<=data_1;
else
	data_out1<=mem[add1];
end

always@(posedge clk)begin
if(we2)
	mem[add2]<=data_2;
else
	data_out2<=mem[add2];
end

endmodule
