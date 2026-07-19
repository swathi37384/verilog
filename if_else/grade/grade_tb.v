module grade_tb;
reg [6:0]a;
grade uut(.a(a));
initial begin
$monitor("a=%d",a);
a=7'd97;#10;
a=7'd64;#10;
a=7'd30;#10;
a=7'd86;#10;
$finish;
end
endmodule
