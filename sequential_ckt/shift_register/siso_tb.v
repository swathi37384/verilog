module siso_tb;
reg clk,rst,in;
wire [3:0]q;
wire q_out;
siso uut(.clk(clk),.rst(rst),.in(in),.q(q),.q_out(q_out));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("clk=%b rst=%b in=%b q=%b q_out=%b",clk,rst,in,q,q_out);
rst=1;
#10 rst=0;
in=1;
#10 in=1;
#10 in=1;
#10 in=1;
#10 in=0;
#100 $finish;
end
endmodule
