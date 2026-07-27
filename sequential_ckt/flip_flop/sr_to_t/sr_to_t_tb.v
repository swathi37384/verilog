module sr_to_t_tb;
reg clk,rst,t;
wire q;
sr_to_t uut(.clk(clk),.rst(rst),.t(t),.q(q));
always #5 clk=~clk;
initial begin
$monitor("rst=%b clk=%b t=%b q=%b",rst,clk,t,q);
clk=0;
rst=0;t=0;
#10 rst=1;
t=0;#10;
t=0;#10;
t=1;#10;
t=1;#10;
$finish;
end
endmodule
