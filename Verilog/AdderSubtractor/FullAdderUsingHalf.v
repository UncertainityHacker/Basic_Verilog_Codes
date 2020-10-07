`timescale 1ns / 1ps

module FullAdderUsingHalf(
    input IN1,
    input IN2,
    input Cin,
    output reg Sum,
    output reg Cout
    );

    wire s1,c1,s2,c2; 
    
    HalfAdder HA1(IN1,IN2,s1,c1);
    HalfAdder HA2(s1,Cin,s2,c2);
    
    always @(s2 or c2) //ans will depend on the last subsystem output o.w. ans not correct
        begin
            Sum = s2;
            Cout = c2 | (IN1&IN2);        
        end
    
endmodule
