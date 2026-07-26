module jk_ff_tb;
reg clk,rst,j,k;
wire q;
jk_ff uut(.clk(clk),.rst(rst),.j(j),.k(k),.q(q));
always #5 clk=~clk;
initial begin
$monitor("time=%0t clk=%b rst=%b j=%b k=%b q=%b",$time,clk,rst,j,k,q);
rst=0;
j=0;
k=0;
clk=0;
#10 rst=1;
#10 j=0;k=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;
#10 ;$finish;
end
endmodule
