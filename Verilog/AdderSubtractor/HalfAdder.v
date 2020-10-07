`timescale 1ns / 1ps

module HalfAdder(
    input IN1,
    input IN2,
    output reg S,
    output reg Cout
    );

always @ (IN1 or IN2)
    begin 
        S = IN1 ^ IN2;
        Cout = IN1 & IN2;
    end

endmodule
