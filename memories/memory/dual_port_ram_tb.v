module dual_tb;
reg clk,we1;
reg [2:0]add1;
reg [3:0]data_1;
wire [3:0]data_out1;
reg we2;
reg [2:0]add2;
reg [3:0]data_2;
wire [3:0]data_out2;
dual uut(.clk(clk),.we1(we1),.we2(we2),.add1(add1),.add2(add2),.data_1(data_1),.data_2(data_2),.data_out1(data_out1),.data_out2(data_out2));
always #5 clk=~clk;
initial begin
$monitor("time=%0t clk=%b we1=%b we2=%b add1=%d add2=%d data_1=%d data_2=%d data_out1=%d data_out2=%d",$time,clk,we1,we2,
	add1,add2,data_1,data_2,data_out1,data_out2);

clk=0;
we1=1;
we2=1;
add1=3'd0;
add2=3'd1;
data_1=4'd5;
data_2=4'd9;
#10;
add1=3'd2;
data_1=4'd10;
#10;
add1=3'd3;
add2=3'd4;
data_1=4'd11;
data_2=4'd15;
#10;
we1=0;
we2=0;
add1=3'd0;
add2=3'd3;
#10;
add2=3'd0;
#5 $finish;
end
endmodule

