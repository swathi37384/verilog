module t_ff_tb;
reg  clk,rst,t;
wire q;
t_ff uut(.clk(clk),.rst(rst),.t(t),.q(q));
always #5 clk=~clk;
initial begin
$monitor("time=%0t rst=%b clk=%b t=%b q=%b",$time,rst,clk,t,q);
	clk = 0;
	rst = 0;
  	t   = 0;

	#5  rst = 1;
	#10 t = 1;   	    
    	#20 t = 0;  
	#20 t = 1; 
 $finish;
end
endmodule
