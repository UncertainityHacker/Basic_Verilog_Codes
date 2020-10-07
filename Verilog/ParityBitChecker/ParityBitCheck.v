`timescale 1ns / 1ps

module ParityBitCheck(
    input [7:0] IN,
    input EO,
    output reg OUT
    );
    
    always@(IN or EO)
    begin
        if(EO == 0)
            OUT = ^IN ;
        else
            OUT = ~(^IN);
    end
    
endmodule
