module oct_bi(input [2:0]oct,
output reg [2:0]out);
always @(*)begin
case(oct)
3'd0 :out=3'b000;
3'd1 :out=3'b001;
3'd2 :out=3'b010;
3'd3 :out=3'b011;
3'd4 :out=3'b100;
3'd5 :out=3'b101;
3'd6 :out=3'b110;
3'd7 :out=3'b111;
default :out=3'bxxx;
endcase
end
endmodule
