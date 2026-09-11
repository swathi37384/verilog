1. What value of a is displayed on the console output? Justify the
same. reg[1:0]a;
initial
begin
$display($time,“a=%d”,a);
a =2’d3;
#10;

a = 2’d2;

end

answer:a=xx	

2. What is the value of b displayed on the console output? Justify the
same. reg[1:0]b;
initial
begin
$strobe($time,“b=%d”,b);
b =2’d3;
b = 2’dx;
#10;
b = 2’d2;
end

answer:b=xx

3. What values are monitored for the variable b till the end of
simulation time? Display the same.

reg[1:0]b;
initial
begin
$monitor($time,“b=%d”,b);
b = 2’d0;
b = 2’dx;
#10;
b = 2’d2;
#10;
b = 2’d1;
$monitoroff;
#10;
b = 2’d2;
$monitoron;
#10;
#100 $finish;
end

answer:b=xx
b=10
b=01

4. Display the console output for the following. 
`timescale 10ns/1ns
parameter P=15.5;
reg a;
initial begin
$monitor($time,“Value of a = %b”,a); 
#P a =1’b1;
#P a = 1’b0;
end

answer:0 a=x
       16 a=1
       31 a=0

5. Display the console output for the following. `timescale 10ns/1ns

parameter P=15.5 ;
reg a ;
initial
begin
$monitor($realtime,“Value of a = %b”,a);
#P a = 1’b1;
#P a = 1’b0;
end

answer: 0 a=x
	15.5 a=1
        31 a=0

10. Find the bug if any in the following File write operation snippet. module test ;

reg [5:0]channel ;
reg a ;
initial
begin
channel = $fopen(“file1.txt”);
$monitor(channel,”a=%b”,a);
end
endmodule

answer:$fmonitor
integer channel
