module t_to_jk_tb;
reg j,k,clk,rst;
wire q;
t_to_jk uut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
$monitor("rst=%b clk=%b j=%b k=%b q=%b",rst,clk,j,k,q);
clk=0;
rst=0;
j=0;k=0;
#10 rst=1;
#10 j=0;k=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;
#5 $finish;
end
endmodule
