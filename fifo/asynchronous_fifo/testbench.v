`timescale 1ns/1ps

module async_fifo_tb;

parameter DEPTH = 16;
parameter DATA_WIDTH = 8;
parameter PTR_WIDTH = $clog2(DEPTH);

reg wclk, rclk;
reg wrst_n, rrst_n;
reg w_en, r_en;
reg [DATA_WIDTH-1:0] data_in;

wire [DATA_WIDTH-1:0] data_out;
wire full, empty;

integer i;

async_fifo #(
    .DEPTH(DEPTH),
    .DATA_WIDTH(DATA_WIDTH)
) dut (
    .wclk(wclk),
    .rclk(rclk),
    .wrst_n(wrst_n),
    .rrst_n(rrst_n),
    .w_en(w_en),
    .r_en(r_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

// Clock generation
initial wclk = 0;
always #5 wclk = ~wclk;

initial rclk = 0;
always #12.5 rclk = ~rclk;

// Test sequence
initial begin
    $dumpfile("async_fifo_tb.vcd");
    $dumpvars(0, async_fifo_tb);

    wrst_n = 0;
    rrst_n = 0;
    w_en = 0;
    r_en = 0;
    data_in = 0;

    #50;
    wrst_n = 1;
    rrst_n = 1;

    repeat (3) @(negedge wclk);

    $display("\nInitial Status: Full=%b, Empty=%b", full, empty);

    // Write until FIFO is full
    $display("\n--- Writing Data ---");
     i=0;
    while ( i < DEPTH) begin
        @(negedge wclk);

        if (!full) begin
            write_data(i + 8'hA0);
	    i=i+1;
        end
    end

    @(negedge wclk);
    w_en = 0;

    // Wait for full flag
    repeat (3) @(negedge wclk);

    if (full == 1'b1)
        $display("\nPASS: FIFO is FULL");
    else
        $display("\nFAIL: FIFO is NOT FULL");

    $display("Full=%b, Empty=%b", full, empty);

    // Allow pointer synchronization
    #100;

    // Read all entries
    $display("\n--- Reading Data ---");

    for (i = 0; i < DEPTH; i = i + 1) begin
        wait (empty == 1'b0);
        @(negedge rclk);

        if (!empty)
            read_data();

        @(negedge rclk);
        r_en = 0;
    end

    // Wait for empty flag
    repeat (4) @(negedge rclk);

    if (empty == 1'b1)
        $display("\nPASS: FIFO is EMPTY");
    else
        $display("\nFAIL: FIFO is NOT EMPTY");

    $display("Full=%b, Empty=%b", full, empty);

    #50;
    $display("\nSimulation Finished");
    $finish;
end

// Write task
task write_data(input [DATA_WIDTH-1:0] val);
begin
    w_en = 1;
    data_in = val;

    @(posedge wclk);
    #1;

    $display("[TIME: %0t] WRITE: data=%h, Full=%b, Empty=%b",
             $time, val, full, empty);
    @(negedge wclk);
    w_en=0;
end
endtask

// Read task
task read_data;
begin
    r_en = 1;
    #1;

    $display("[TIME: %0t] READ: data=%h, Full=%b, Empty=%b",
             $time, data_out, full, empty);

    @(posedge rclk);
    #1;
end
endtask

// Monitor
initial begin
    $monitor("At time %0t: Full=%b, Empty=%b",
             $time, full, empty);
end

initial begin
	$dumpfile("async_fifo.vcd");
	$dumpvars;
end
endmodule
