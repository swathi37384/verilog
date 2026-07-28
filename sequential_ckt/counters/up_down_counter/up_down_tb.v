module up_down_tb;
reg clk,rst,m;
wire [2:0]out;
up_down uut(.clk(clk),.rst(rst),.m(m),.out(out));
always #2 clk=~clk;
initial begin
$monitor("clk=%b rst=%b m=%b out=%b",clk,rst,m,out);
rst=1;
clk=0;
m=0;
#3 rst=0;
#20 rst=1;
#2 m=1;
#10 rst=0;
#20 $finish;
end
endmodule
 




