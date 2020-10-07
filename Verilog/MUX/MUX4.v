`timescale 1ns / 1ps

module MUX4(
    input [3:0] IN,
    input [1:0] S,
    output reg OUT
    );
    
    always@(IN or S)
    begin
        case(S)
        2'b00 : OUT = IN[0];
        2'b01 : OUT = IN[1];
        2'b10 : OUT = IN[2];
        2'b11 : OUT = IN[3];
        endcase 
    end
    
endmodule
