
module async_fifo_tb;

reg wclk, rclk;
reg w_rst, r_rst;
reg w_en, r_en;
reg [7:0] wdata;

wire [7:0] rdata;
wire wfull, rempty;

reg write_accepted;

async_fifo uut(
    .wclk(wclk),
    .rclk(rclk),
    .w_rst(w_rst),
    .r_rst(r_rst),
    .w_en(w_en),
    .r_en(r_en),
    .wdata(wdata),
    .rdata(rdata),
    .wfull(wfull),
    .rempty(rempty)
);

// Write clock - 10 ns period
initial begin
    wclk = 0;
    forever #5 wclk = ~wclk;
end

// Read clock - 20 ns period
initial begin
    rclk = 0;
    forever #10 rclk = ~rclk;
end

initial begin

    w_rst = 0;
    r_rst = 0;
    w_en = 0;
    r_en = 0;
    wdata = 0;
    write_accepted = 0;

    
    #25;
    w_rst = 1;
    r_rst = 1;

    // WRITE OPERATION
    @(negedge wclk);
    w_en = 1;

    repeat(10) begin

        write_accepted = !wfull;

        if(write_accepted)
            wdata = wdata + 8'd10;

        @(posedge wclk);
        #1;

        if(write_accepted)
            $display("TIME=%0t WRITE DATA=%h FULL=%b",
                      $time, wdata, wfull);
        else
            $display("TIME=%0t WRITE REJECTED FULL=%b",
                      $time, wfull);

        @(negedge wclk);
    end

    w_en = 0;

    
    #30;

    
 
// READ OPERATION
@(negedge rclk);
r_en = 1;

repeat(9) begin

    write_accepted = !rempty;

    @(posedge rclk);
    #1;

    if(write_accepted)
        $display("TIME=%0t READ DATA=%h EMPTY=%b",
                  $time, rdata, rempty);
    else
        $display("TIME=%0t READ REJECTED EMPTY=%b",
                  $time, rempty);

    @(negedge rclk);

end

r_en = 0;

    #20;
    $finish;

end

endmodule
