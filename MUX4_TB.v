`timescale 1ns / 1ps
`include "MUX4.v"

module MUX4_TB;

    reg [3:0] x;
    reg [1:0] sel;
    wire y;

    mux4 out1
    (
        .x(x),
        .sel(sel),
        .y(y)
    );

    initial begin
        x=4'd12;
        
        sel=2'd0;
        #10;

        sel=2'd1;
        #10;

        sel=2'd2;
        #10;
        
        sel=2'd3;
        #10;

    $finish;
    end
endmodule