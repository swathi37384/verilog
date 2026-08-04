module single_tb;
reg clk,we;
reg [2:0]add;
reg [3:0]data_in;
wire [3:0]data_out;
single uut(.clk(clk),.we(we),.add(add),.data_in(data_in),.data_out(data_out));
always #5 clk=~clk;
initial begin
$monitor("time=%0t clk=%b we=%b add=%d data_in=%d data_out=%d",$time,clk,we,add,data_in,data_out);

clk=0;
we=1;
add=3'd0;
data_in=4'd5;
#10;
add=1;
data_in=4'd2;
#10;
add=3'd3;
data_in=4'd11;
#10;
we=0;
add=3'd0;
#10;
add=3'd3;
#5 $finish;
end
endmodule

