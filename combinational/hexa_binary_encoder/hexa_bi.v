module hexa_bi(input [3:0]h,
output reg [3:0]out);
always @(*)begin
case(h)
4'h0 :out=4'b0000;
4'h1 :out=4'b0001;
4'h2 :out=4'b0010;
4'h3 :out=4'b0011;
4'h4 :out=4'b0100;
4'h5 :out=4'b0101;
4'h6 :out=4'b0110;
4'h7 :out=4'b0111;
4'h8 :out=4'b1000;
4'h9 :out=4'b1001;
4'ha :out=4'b1010;
4'hb :out=4'b1011;
4'hc :out=4'b1100;
4'hd :out=4'b1101;
4'he :out=4'b1110;
4'hf :out=4'b1111;
default :out=4'bxxxx;
endcase
end
endmodule
