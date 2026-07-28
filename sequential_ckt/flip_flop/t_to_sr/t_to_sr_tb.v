module t_to_sr_tb;
reg s,r,clk,rst;
wire q;
t_to_sr uut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
$monitor("rst=%b clk=%b s=%b r=%b q=%b",rst,clk,s,r,q);
clk=0;
rst=0;
s=0;r=0;
#10 rst=1;
#10 s=0;r=0;
#10 s=0;r=1;
#10 s=1;r=0;// s=1 and r=1 is not valid for sr ff
#5 $finish;
end
endmodule
