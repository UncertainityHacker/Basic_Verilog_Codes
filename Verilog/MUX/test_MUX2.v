`timescale 1ns / 1ps

module test_MUX2();

    reg [1:0] IN;
    reg S; wire OUT;
    
    MUX2 M1(IN,S,OUT);
    
    initial begin
        S=0 ; IN = 2'b00;
        #10 S=1 ; IN = 2'b10;
        #10 S=0 ; IN = 2'b01;
        #10 S=1 ; IN = 2'b10;
        #10 S=0 ; IN = 2'b10;
        #10 S=0 ; IN = 2'b00;
    end
endmodule
