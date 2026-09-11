module fsm2(input clk,rst,in,
output reg out);
parameter s0=2'd0,
s1=2'd1,
s2=2'd2,
s3=2'd3;
reg [1:0]present,next;
always@(posedge clk or negedge rst)
begin
if(!rst)
	present<=s0;
else
	present<=next;
end
always@(*)begin
next=present;
case(present)
out=1'b0;
s0: begin
if(in)
next=s1;
else
next=s0;
end

s1:begin
if(in)
next=s1;
else
next=s2;
end

s2:begin
if(in)
next=s3;
else
next=s0;
end

s3:begin
if(in)
begin
out=1'b1;
next=s1;
end
else
next=s2;
end

default :
	begin
		next=s0;
out=1'b0;
end

end
endmodule


