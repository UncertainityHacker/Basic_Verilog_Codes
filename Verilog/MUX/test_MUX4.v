`timescale 1ns / 1ps

module test_MUX4();

    reg [3:0]in;
    reg [1:0]s;
    wire out;
    
    MUX4 M1(in,s,out);
    
    initial begin
        in = 4'h0 ; s=2'b00 ;
        #10 in = 4'h1 ; s=2'b01 ; 
        #10 in = 4'h4 ; s=2'b10 ; 
        #10 in = 4'h5 ; s=2'b11 ; 
        #10 in = 4'h3 ; s=2'b11 ; 
        #10 in = 4'h8 ; s=2'b10 ; 
        #10 in = 4'ha ; s=2'b01 ; 
        #10 in = 4'hc ; s=2'b00 ; 
    end
    
endmodule
