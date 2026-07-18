module large_3(a, b, c, y);

input [3:0] a, b, c;
output reg [3:0] y;

always @(*) begin
    if (a > b) begin
        if (a > c)
            y = a;
        else
            y = c;
    end
    else begin
        if (b > c)
            y = b;
        else
            y = c;
    end
end

endmodule
