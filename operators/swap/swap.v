module swap(input [3:0]a,b,
output reg [4:0]x,y);
always @(*) begin
 x=a;
 y=b;
 /*x=x+y;
 y=x-y;
 x=x-y;
 */
  x=x^y;
  y=x^y;
  x=x^y;

 end
endmodule
