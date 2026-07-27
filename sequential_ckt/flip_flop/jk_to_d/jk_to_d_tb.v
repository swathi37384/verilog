module jk_to_d_tb;
reg clk,d;
wire q;
jk_to_d uut(.clk(clk),.d(d),.q(q));
always #5 clk=~clk;
initial begin
$monitor("time=%0t clk=%b d=%b q=%b",$time,clk,d,q);
clk=0;
d=1;
#10 d=0;
#10 d=1;
#10 d=0;
 #10 d=1;
#10 d=1;
#5 $finish;
end
endmodule
