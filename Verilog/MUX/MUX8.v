`timescale 1ns / 1ps

module MUX8(
    input [7:0] IN,
    input [2:0] S,
    output reg OUT
    );

    always@(IN or S)
    begin 
        case(S)
        3'b 000 : OUT = IN[0];
        3'b 001 : OUT = IN[1];
        3'b 010 : OUT = IN[2];
        3'b 011 : OUT = IN[3];
        3'b 100 : OUT = IN[4];
        3'b 101 : OUT = IN[5];
        3'b 110 : OUT = IN[6];
        3'b 111 : OUT = IN[7];
        endcase
    end
endmodule
