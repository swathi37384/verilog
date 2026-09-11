module odd_even_tb;
reg [3:0]a;
wire even;
odd_even uut(.a(a),.even(even));
initial begin
$monitor("a=%d even=%b",a,even);
a=4'd10;#10; //test case1
a=4'd5;#10; //test case2 
a=4'd1;#10; //test case3 
a=4'd0;#10; //test case4
$finish;
end 
endmodule 
