module alu_tb;
reg [3:0]a,b;
reg [2:0]sel;
wire [4:0]out;
alu uut(.a(a),.b(b),.sel(sel),.out(out));
initial begin
$monitor("a=%b b=%b sel=%b out=%b",a,b,sel,out);
a=4'b1010;b=4'b0001;sel=3'b000;#10;
a=4'b1010;b=4'b0001;sel=3'b001;#10; 
a=4'b1010;b=4'b0001;sel=3'b010;#10; 
a=4'b1010;b=4'b0001;sel=3'b011;#10; 
a=4'b1010;b=4'b0001;sel=3'b100;#10; 
a=4'b1010;b=4'b0001;sel=3'b101;#10; 
a=4'b1010;b=4'b0001;sel=3'b110;#10; 
a=4'b1010;b=4'b0001;sel=3'b111;#10;
$finish;
end
endmodule 
