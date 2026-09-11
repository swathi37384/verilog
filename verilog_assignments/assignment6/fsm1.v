module fsm1(input clk,rst,in,
output reg out);
parameter s0=3'd0, 
s1=3'd1,
s2=3'd2,
s3=3'd3,
s4=3'd4;
reg [2:0]present,next;
always@(posedge clk or negedge rst) begin
if(!rst)
	present<=s0;
else
	present<=next;
end
always@(*)begin
case(present)
s0: begin
if(in)
next=s1;
else
next=s0;
end

s1: begin
if(in)
next=s0;
else
next=s2;
end

s2: begin
if(in)
next=s3;
else
next=s0;
end

s3: begin
if(in)
next=s0;
else
next=s4;
end

s4: begin
if(in)
next=s1;
else
next=s0;
end

default :next=s0;
endcase
end

always@(*) begin
if(present ==s4)
  out=1'b1;
else
   out=1'b0;
end
endmodule
