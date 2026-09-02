module fifo(input clk,rst,
input w_en,rd_en,
input [3:0]d_in,
output reg [3:0]d_out,
output   full,empty);
reg [1:0]rd_ptr,w_ptr;
reg [3:0]mem[0:3];
reg [2:0]count;
always@(posedge clk)begin
if(rst)begin
	rd_ptr<=0;
	w_ptr<=0;
	count<=0;
	d_out<=0;
end
else begin
	if(w_en&&!rd_en && !full)begin
		mem[w_ptr]<=d_in;
		w_ptr<=w_ptr+1;
		count<=count+1;
	end
	if(rd_en && !w_en &&!empty)begin
		d_out<=mem[rd_ptr];
		rd_ptr<=rd_ptr+1;
		count<=count-1;
	end
end
end
assign empty=(count==0);
assign full=(count==4);
endmodule
