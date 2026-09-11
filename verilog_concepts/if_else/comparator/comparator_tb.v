module comp_tb;
reg [3:0]a,b;
comp uut(.a(a),.b(b));
initial begin
$monitor("a=%b b=%b",a,b);
a=4'b1010;b=4'b0101;#10;
a=4'b1111;b=4'b1111;#10; 
a=4'b1010;b=4'b1101;#10;
end
endmodule 
