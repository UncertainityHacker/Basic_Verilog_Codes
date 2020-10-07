`timescale 1ns / 1ps
//Ripple Adder/Subtractor 
module AdderSubtractor(
    input [3:0] IN1,
    input [3:0] IN2,
    input AS,
    output Cout,
    output [3:0] OUT
    );
    wire s1,c1,s2,c2,s3,c3,s4,c4;
    reg Cin;
    reg [3:0] temp;
    FullAdder FA1(IN1[0],IN2[0]^AS,AS,OUT[0],c1);
    FullAdder FA2(IN1[1],IN2[1]^AS,c1,OUT[1],c2);
    FullAdder FA3(IN1[2],IN2[2]^AS,c2,OUT[2],c3);
    FullAdder FA4(IN1[3],IN2[3]^AS,c3,OUT[3],Cout);    
endmodule