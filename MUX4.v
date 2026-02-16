`include "MUX2.v"
module mux4
(
    input [3:0] x,
    input [1:0] sel,
    output y
);

wire c1, c2;

mux m1 (.a(x[0]), .b(x[1]), .sel(sel[0]), .c(c1));
mux m2 (.a(x[2]), .b(x[3]), .sel(sel[0]), .c(c2));
mux m3 (.a(c1), .b(c2), .sel(sel[1]), .c(y));

endmodule