module t_to_d_tb;
reg d,clk,rst;
wire q;
t_to_d uut(.d(d),.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
$monitor("rst=%b clk=%b d=%b q=%b",rst,clk,d,q);
clk=0;
rst=0;
d=1;
#10 rst=1;
#10 d=0;
#10 d=1;
#10 d=0;
 #10 d=1;
#10 d=1;
#5 $finish;
end
endmodule
