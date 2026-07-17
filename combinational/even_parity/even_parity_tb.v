module even_parity_tb;
reg [2:0]a;
wire p;
even_parity uut(.a(a),.p(p));
initial begin
$monitor("a=%b |p=%b",a,p);
a=3'b000;#10;
a=3'b001;#10; 
a=3'b010;#10; 
a=3'b011;#10; 
a=3'b100;#10; 
a=3'b101;#10;
a=3'b110;#10; 
a=3'b111;#10;
$finish;
end 
endmodule  
