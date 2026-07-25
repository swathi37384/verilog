module dec_bcd_tb;
reg [9:0]d;
wire [3:0]out;
dec_bcd uut(.d(d),.out(out));
initial begin
$monitor("d=%b bcd=%b",d,out);
d=10'b0000000001;#10;
d=10'b0000000100;#10;
d=10'b0010000000;#10;
d=10'b0000010000;#10;
d=10'b0000010001;#10;
#10;$finish;
end
endmodule
