`timescale 1ns / 1ps
//high priority encoder
module Encoder(
    input clk,
    input En,
    input [7:0] IN,
    output reg [2:0] OUT
    );
    
    always @(posedge(clk) or En) begin
        if(En == 0)
            OUT = 3'bzzz;
        else
            case(IN)
            8'b00000000 : OUT = 000;
            8'b0000001x : OUT = 001;
            8'b000001xx : OUT = 010;
            8'b00001xxx : OUT = 011;
            8'b0001xxxx : OUT = 100;
            8'b001xxxxx : OUT = 101;
            8'b01xxxxxx : OUT = 110;
            8'b1xxxxxxx : OUT = 111;
            endcase
    end
endmodule
