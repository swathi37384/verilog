module sr_to_d_tb;
reg clk,rst,d;
wire q;
sr_to_d uut(.clk(clk),.rst(rst),.d(d),.q(q));
always #5 clk=~clk;
initial begin
$monitor("rst=%b clk=%b d=%b q=%b",rst,clk,d,q);
clk=0;
rst=0;d=0;
#10 rst=1;
d=0;#10;
d=0;#10;
d=1;#10;
d=1;#10;
$finish;
end
endmodule
