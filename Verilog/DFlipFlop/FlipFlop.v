`timescale 1ns / 1ps

module DFlipFlop(
    input clk,
    input IN,
    output reg Q,
    output reg Qbar
    );
    
    always @ (posedge clk)
    begin
        if(IN==1) begin
            Q = 1; Qbar = 0;
            end
        else begin
            Q = 0; Qbar = 1;
        end
    end
    
endmodule
