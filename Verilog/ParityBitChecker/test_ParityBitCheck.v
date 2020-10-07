`timescale 1ns / 1ps

module test_ParityBitCheck();

    reg [7:0] in;
    reg eo;
    wire out;
    
    ParityBitCheck P1(in,eo,out);
    
    initial begin
        
        eo = 0; in = 8'h82;
        #50 eo = 1; in = 8'h82; 
        
    end

endmodule
