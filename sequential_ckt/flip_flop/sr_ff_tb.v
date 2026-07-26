module sr_ff_tb;
reg clk,rst,s,r;
wire q;
sr_ff uut(.clk(clk),.rst(rst),.s(s),.r(r),.q(q));
always #5 clk=~clk;
initial begin
$monitor("time=%0t clk=%b rst=%b s=%b r=%b q=%b",$time,clk,rst,s,r,q);
rst=0;
s=0;
r=0;
clk=0;
#10 rst=1;
#10 s=0;r=0;
#10 s=0;r=1;
#10 s=1;r=0;
#10 s=1;r=1;
#10 ;$finish;
end
endmodule
