
//synchronizer 

module sync #(parameter WIDTH = 3) (
    input clk, rst_n,
    input [WIDTH:0] d_in,
    output reg [WIDTH:0] q_out
);
  
  reg [WIDTH:0] q1;
  
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      q1    <= 0;
      q_out <= 0;
    end else begin
      q1    <= d_in;
      q_out <= q1;
    end
  end
  
endmodule

//write pointer handler
module wptr_handler #(parameter PTR_WIDTH = 3) (
    input wclk, wrst_n, w_en,
    input [PTR_WIDTH:0] g_rptr_sync,
    output reg [PTR_WIDTH:0] b_wptr, g_wptr,
    output reg full
);
  
  wire [PTR_WIDTH:0] b_wptr_next, g_wptr_next;
  wire wfull;
  
  assign b_wptr_next = b_wptr + (w_en & !full);
  assign g_wptr_next = (b_wptr_next >> 1) ^ b_wptr_next;
  
  always @(posedge wclk or negedge wrst_n) begin
    if (!wrst_n) begin
      b_wptr <= 0;
      g_wptr <= 0;
      full   <= 0;
    end else begin
      b_wptr <= b_wptr_next;
      g_wptr <= g_wptr_next;
      full   <= wfull;
    end
  end
  
  assign wfull = (g_wptr_next == {~g_rptr_sync[PTR_WIDTH:PTR_WIDTH-1], g_rptr_sync[PTR_WIDTH-2:0]});
  
endmodule

//read pointer handler
module rptr_handler #(parameter PTR_WIDTH = 3) (
    input rclk, rrst_n, r_en,
    input [PTR_WIDTH:0] g_wptr_sync,
    output reg [PTR_WIDTH:0] b_rptr, g_rptr,
    output reg empty
);
  
  wire [PTR_WIDTH:0] b_rptr_next, g_rptr_next;
  wire rempty;
  
  assign b_rptr_next = b_rptr + (r_en & !empty);
  assign g_rptr_next = (b_rptr_next >> 1) ^ b_rptr_next;
  
  always @(posedge rclk or negedge rrst_n) begin
    if (!rrst_n) begin
      b_rptr <= 0;
      g_rptr <= 0;
      empty  <= 1;
    end else begin
      b_rptr <= b_rptr_next;
      g_rptr <= g_rptr_next;
      empty  <= rempty;
    end
  end
  
  assign rempty = (g_rptr_next == g_wptr_sync);
  
endmodule

//memory
module fifo_mem #(parameter DEPTH = 8, DATA_WIDTH = 8, PTR_WIDTH = 3) (
    input wclk, w_en, full,
    input [PTR_WIDTH:0] b_wptr, b_rptr,
    input [DATA_WIDTH-1:0] data_in,
    output [DATA_WIDTH-1:0] data_out
);
  reg [DATA_WIDTH-1:0] fifo [0:DEPTH-1];
  
  // Write operation (synchronous)
  always @(posedge wclk) begin
    if (w_en & !full)
      fifo[b_wptr[PTR_WIDTH-1:0]] <= data_in;
  end
  
  // Read operation (asynchronous/combinatorial for standard FIFO behavior)
  assign data_out = fifo[b_rptr[PTR_WIDTH-1:0]];
  
endmodule

//top
module async_fifo #(parameter DEPTH = 8, DATA_WIDTH = 8) (
    input  wclk, rclk, wrst_n, rrst_n, w_en, r_en,
    input  [DATA_WIDTH-1:0] data_in,
    output [DATA_WIDTH-1:0] data_out,
    output full, empty
);
  
  parameter PTR_WIDTH = $clog2(DEPTH);
  
  wire [PTR_WIDTH:0] b_wptr, b_rptr;
  wire [PTR_WIDTH:0] g_wptr, g_rptr;
  wire [PTR_WIDTH:0] g_wptr_sync, g_rptr_sync;
  
  sync #(PTR_WIDTH) sync_w2r (
    .clk(rclk),
    .rst_n(rrst_n),
    .d_in(g_wptr),
    .q_out(g_wptr_sync)
  );
  
  sync #(PTR_WIDTH) sync_r2w (
    .clk(wclk),
    .rst_n(wrst_n),
    .d_in(g_rptr),
    .q_out(g_rptr_sync)
  );
  
  wptr_handler #(PTR_WIDTH) h_wptr (
    .wclk(wclk),
    .wrst_n(wrst_n),
    .w_en(w_en),
    .g_rptr_sync(g_rptr_sync),
    .b_wptr(b_wptr),
    .g_wptr(g_wptr),
    .full(full)
  );
  
  rptr_handler #(PTR_WIDTH) h_rptr (
    .rclk(rclk),
    .rrst_n(rrst_n),
    .r_en(r_en),
    .g_wptr_sync(g_wptr_sync),
    .b_rptr(b_rptr),
    .g_rptr(g_rptr),
    .empty(empty)
  );
  
  fifo_mem #(DEPTH, DATA_WIDTH, PTR_WIDTH) fifo_mem_top (
    .wclk(wclk), 
    .w_en(w_en), 
    .full(full),
    .b_wptr(b_wptr),
    .b_rptr(b_rptr),
    .data_in(data_in),
    .data_out(data_out)
  );
  
endmodule


