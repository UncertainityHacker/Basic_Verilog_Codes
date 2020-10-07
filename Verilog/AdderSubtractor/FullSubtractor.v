`timescale 1ns / 1ps

module FullSubtractor(
    input IN1,
    input IN2,
    input Bin,
    output reg Diff,
    output reg Bout
    );
    
    always @(IN1 or IN2 or Bin)
        begin
            
            Diff = IN1^IN2^Bin;
            Bout = (~IN1&IN2) | (IN2&Bin) | (~IN1&Bin);
                      
        end
    
endmodule
