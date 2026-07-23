module ripple_tb;
reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire co;
ripple uut(.a(a),.b(b),.c(c),.sum(sum),.co(co));
initial begin
$monitor("a=%0d b=%0d c=%0d sum=%0b carry=%0b",a,b,c,sum,co);
a=4'd14;b=4'd10;c=1'd0;#10;
a=4'd10;b=4'd5;c=1'd0;#10;
a=4'd11;b=4'd9;c=1'd0;#10;
end
endmodule
