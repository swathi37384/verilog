module ad_tb;
reg [6:0]marks,age;
ad uut(.marks(marks),.age(age));
initial begin
$monitor("marks=%d age=%d",marks,age);
marks=97;age=20;#10;
marks=70;age=10;#10; 
marks=40;age=20;#10; 
marks=79;age=40;#10;
$finish;
end
endmodule 
