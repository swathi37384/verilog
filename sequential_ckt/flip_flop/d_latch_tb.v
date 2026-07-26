module d_latch_tb;
reg en,rst,d;
reg [2:0]delay1;
reg [1:0]delay2;
integer i;
wire q;
d_latch uut(.en(en),.rst(rst),.d(d),.q(q));
initial begin
$monitor("[%0t] en=%b rst=%b d=%b q=%d",$time,en,rst,d,q);
{en,d,rst}<=0;
#10 rst<=1;
for(i=0;i<5;i=i+1)
begin
delay1=$random;
delay2=$random;
#(delay1) d<=i;
#(delay2) en<=~en;
end
end
endmodule
