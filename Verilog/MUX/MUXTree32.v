`timescale 1ns / 1ps

module MUXTree32(
    input [31:0] IN,
    input [4:0] S,
    output OUT
    );
    
    wire [3:0]o;
    
    MUX8 m1(IN[7:0],S[2:0],o[0]);
    MUX8 m2(IN[15:8],S[2:0],o[1]);
    MUX8 m3(IN[23:16],S[2:0],o[2]);
    MUX8 m4(IN[31:24],S[2:0],o[3]);
    MUX4 m5(o,S[4:3],OUT);
    
endmodule
