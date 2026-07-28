module downcounter_tb;
reg clk,rst;
wire [3:0]out;
downcounter uut(.clk(clk),.rst(rst),.out(out));
always #5 clk=~clk;
initial begin
$monitor("clk=%b rst=%b out=%b",clk,rst,out);
rst=0;
clk=0;
#10 rst=1;
#50 rst=0;
#10 rst=1;
#40 $finish;
end
endmodule
 
