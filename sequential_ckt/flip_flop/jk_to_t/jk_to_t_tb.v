module jk_to_t_tb;
reg rst ,clk,t;
wire q;
jk_to_t uut(.rst(rst),.clk(clk),.t(t),.q(q));
always #5 clk=~clk;
initial begin
$monitor("clk=%b rst=%b t=%b q=%b",clk,rst,t,q);
clk=0;
t=0;
rst=0;
#10 rst=1;
#10 t=1;
#10 t=0;
#10 t=1;
#10 t=1;
#5 $finish;
end
endmodule
