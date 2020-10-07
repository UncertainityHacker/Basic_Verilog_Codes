`timescale 1ns / 1ps

module MUXTree16(
    input [15:0] IN,
    input [3:0] S,
    output OUT
    );
    
    wire [1:0]o;
    
    MUX8 m1(IN[7:0],S[2:0],o[0]);
    MUX8 m2(IN[15:8],S[2:0],o[1]);
    MUX2 m3(o,S[3],OUT);
    
endmodule
