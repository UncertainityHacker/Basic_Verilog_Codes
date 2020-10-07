`timescale 1ns / 1ps

module test_HalfAdder();

reg a,b;
wire S,C;

HalfAdder HA1(a,b,S,C);

initial begin
    a = 0 ; b = 0;
    #10 a = 0 ; b = 1;
    #10 a = 1 ; b = 0;
    #10 a = 1 ; b = 1;    
    #10 a = 0 ; b = 1;
    end

endmodule
