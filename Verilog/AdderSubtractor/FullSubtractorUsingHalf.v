`timescale 1ns / 1ps

module FullSubtractorUsingHalf(
    input IN1,
    input IN2,
    input Bin,
    output reg Diff,
    output reg Bout
    );
    
    wire d1,b1,d2,b2;
    
    HalfSubtractor HS1(IN1,IN2,d1,b1);
    HalfSubtractor HS2(d1,Bin,d2,b2);
    
    always@(d2 or b2)
        begin
            Diff = d2;
            Bout = (~IN1&IN2) | b2;
        end
    
endmodule
