module jk_to_sr_tb;
reg clk,s,r,rst;
wire q;
jk_to_sr uut(.clk(clk),.rst(rst),.s(s),.r(r),.q(q));
always #5 clk=~clk;
initial begin
$monitor("rst=%b clk=%b s=%b r=%b q=%b ",rst,clk,s,r,q);
rst=0;
clk=0;
s=0;r=0;
#10 rst=1;
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;#10;
$finish;
end
endmodule
