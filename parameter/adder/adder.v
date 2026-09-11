module add #(parameter N=4)(input [N-1:0]a,b
output [N:0]sum);
always@(*)begin
sum=a+b;
end
endmodule

