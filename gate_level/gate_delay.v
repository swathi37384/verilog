module gate_delay(input a,b,
output out);
and #(3) (out,a,b);
endmodule
