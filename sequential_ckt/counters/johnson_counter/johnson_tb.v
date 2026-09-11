module johnson_tb;
reg clk,rst;
wire [3:0]q;
johnson uut(.clk(clk),.rst(rst),.q(q));
always #2 clk=~clk;
initial begin
$monitor("time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);  
clk=0;
rst=1;
#3 rst=0;
#40$finish;
end
endmodule
