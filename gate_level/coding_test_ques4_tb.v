module ques4_tb;
reg a,b,c,d,e;
wire out;
ques4 uut(.a(a),.b(b),.c(c),.d(d),.e(e),.out(out));
initial begin
$monitor ("time=%0t a=%b b=%b c=%b d=%b e=%b out=%b",$time,a,b,c,d,e,out);
{a,b,c,d,e}=0;
#100 a=1;b=0;c=0;d=0;e=1;
$monitoroff;
#50;
$monitoron;
$finish;
end
endmodule
