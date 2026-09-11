module tb;
reg a,b;
wire out;
gate_delay uut(.a(a),.b(b),.out(out));
initial begin
$monitor("time=%0t a=%b b=%b out=%b",$time,a,b,out);
a=0;b=0;#10;
a=1;b=1;
#5 $finish;
end
endmodule
