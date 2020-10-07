`timescale 1ns / 1ps

module FullAdder(
    input IN1,
    input IN2,
    input Cin,
    output reg S,
    output reg Cout
    );
    
    always @(IN1 or IN2 or Cin)
        begin 
            S = IN1 ^ IN2 ^ Cin;
            Cout = ((IN1^IN2)&Cin) | (IN1&IN2);
        end
        
endmodule
