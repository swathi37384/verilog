module fifo_tb;
reg clk,rst;
reg w_en,rd_en;
reg [3:0]d_in;
wire [3:0]d_out;
wire full,empty;
fifo uut(.clk(clk),.rst(rst),.w_en(w_en),.rd_en(rd_en),.d_in(d_in),.d_out(d_out),.full(full),.empty(empty));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
	$monitor("clk=%b rst=%b w_en=%b d_in=%d rd_en=%b d_out=%d full=%b empty=%b",clk,rst,w_en,d_in,rd_en,d_out,full,empty);	
rst=1;
#10 rst=0;
w_en=1;
rd_en=0;

d_in=4'd2;
#10 d_in=4'd10;
#10 d_in=4'd9;
#10 d_in=4'd1;
#10 d_in=4'd6;
#10 rd_en=1;
w_en=0;
#60 $finish;
end
endmodule
