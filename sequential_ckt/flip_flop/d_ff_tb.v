module d_ff_tb;
reg  clk,rst,d;
wire q;
d_ff uut(.clk(clk),.rst(rst),.d(d),.q(q));
always #5 clk=~clk;
initial begin
$monitor("time=%0t rst=%b clk=%b d=%b q=%b",$time,rst,clk,d,q);
	clk = 0;
	rst = 0;
  	d   = 0;

	#5  rst = 1;
	#10 d = 1;   	    
    	#20 d = 0;  
	#20 d = 1; 
 $finish;
end
endmodule
