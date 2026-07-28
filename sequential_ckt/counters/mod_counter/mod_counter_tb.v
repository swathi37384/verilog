module mod_tb;
reg clk ,rst;
wire [3:0]count;
mod10 uut(.clk(clk),.rst(rst),.count(count));
always #1 clk=~clk;
initial begin
$monitor("rst=%b clk=%b count=%b",rst,clk,count);
rst=1;
clk=0;
#3 rst=0;
#20 $finish;
end
endmodule
