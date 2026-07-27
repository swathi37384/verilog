module d_to_jk_tb;
reg clk,rst,j,k;
wire q;
d_to_jk uut(.clk(clk),.rst(rst),.j(j),.k(k),.q(q));
always #5 clk=~clk;
initial begin
$monitor("rst=%b clk=%b j=%b k=%b q=%b",rst,clk,j,k,q);
clk=0;
rst=0;j=0;k=0;
#10 rst=1;
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
$finish;
end
endmodule
