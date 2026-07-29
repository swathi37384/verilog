module modn_tb;
reg clk ,rst;
wire [2:0]count;
modn #(.MOD(5),.WIDTH(3)) uut(.clk(clk),.rst(rst),.count(count));
always #1 clk=~clk;
initial begin
$monitor("rst=%b clk=%b count=%b",rst,clk,count);
rst=1;
clk=0;
#3 rst=0;
#20 $finish;
end
endmodule
