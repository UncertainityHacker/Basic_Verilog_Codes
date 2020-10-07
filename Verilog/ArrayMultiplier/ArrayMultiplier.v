`timescale 1ns / 1ps

module ArrayMultiplier(
    input [3:0] IN1,
    input [3:0] IN2,
    output [7:0] OUT
    );
    
    wire c1,c2,c3,c4;
    wire S1,S2,S3,S4,S5,S6;
    wire C1,C2,C3,C4,C5,C6,C7;
        
    HalfAdder HA1(IN1[0]&IN2[1],IN1[1]&IN2[0],OUT[1],c1);
    HalfAdder HA2(S1,IN1[0]&IN2[2],OUT[2],c2);
    HalfAdder HA3(S3,IN1[0]&IN2[2],OUT[3],c3);
    HalfAdder HA4(S5,IN1[1]&IN2[3],OUT[4],c4);
    
    FullAdder FA1(IN1[1]&IN2[1],IN1[2]&IN2[0],c1,S1,C1);
    FullAdder FA2(IN1[2]&IN2[1],IN1[3]&IN2[0],C1,S2,C2);
    FullAdder FA3(S2,IN1[1]&IN2[0],c2,S3,C3);
    FullAdder FA4(C2,IN1[3]&IN2[1],C3,S4,C4);
    FullAdder FA5(S4,IN1[2]&IN2[2],c3,S5,C5);
    FullAdder FA6(C4,IN1[3]&IN2[2],C5,S6,C6);
    FullAdder FA7(S6,IN1[2]&IN2[3],c4,OUT[5],C7);
    FullAdder FA8(C7,IN1[3]&IN2[3],C7,OUT[6],OUT[7]);
    
    assign OUT[0] = IN1[0] & IN2[0];
    
endmodule
