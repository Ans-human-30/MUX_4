module mux
(
    input a,
    input b,
    input sel,
    output reg c
);
always @(*) begin
    if (sel==1'b0)
        c = a;
    else
        c = b;
end
endmodule