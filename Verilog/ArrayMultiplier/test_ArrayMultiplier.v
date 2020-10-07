`timescale 1ns / 1ps

module test_ArrayMultiplier();

    reg [3:0] in1; 
    reg [3:0]in2;
    wire [7:0]out;
    
    ArrayMultiplier AM1(in1,in2,out);
    
    initial begin
        
        in1 = 4'h1; in2 = 4'h2;
        #50 in1 = 4'h2; in2 = 4'h2;
        #50 in1 = 4'h3; in2 = 4'h3;
        #50 in1 = 4'h2; in2 = 4'h0;
        #50 in1 = 4'h3; in2 = 4'h2;
        
    end

endmodule
