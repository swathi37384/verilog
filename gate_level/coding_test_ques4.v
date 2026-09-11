module ques4(input a,b,c,d,e,
output out);
wire b1,c1,d1;
wire w1,w2,w3,w4,w5,w6,w7,w8;
not #(4) (b1,b);
not #(4) (c1,c);
not #(4) (d1,d);
and #(3) (w1,a,b1);
and #(3) (w5,w1,c1);
and #(3) (w2,a,b);
and #(3) (w6,w2,e);
and #(3) (w3,b1,c);
and #(3) (w4,c,d1);
or #(2) (w8,w5,w6);
or #(2) (w7,w3,w4);
or #(2) (out,w8,w7);
endmodule

