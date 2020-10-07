`timescale 1ns / 1ps

module MUX2(
    input [1:0] IN,
    input S,
    output reg OUT
    );
    
    always@(S or IN)
    begin  
        if(S == 1)
            OUT = IN[1];
        else begin
            OUT = IN[0];
        end
    end
endmodule
