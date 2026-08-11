
module tb;
reg clk,reset;
wire clkout;
divide10 uut(.clk(clk),.reset(reset),.clkout(clkout));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
$monitor("time=%0t clk=%b reset=%b clkout=%b",$time,clk,reset,clkout);
$dumpfile("divide_by_10.vcd");
$dumpvars;
reset=1;
#20 reset=0;
#100 $finish;
end
endmodule

