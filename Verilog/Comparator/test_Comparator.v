`timescale 1ns / 1ps

module test_Comparator();

    reg [3:0] in1, in2;
    wire [1:0] out;
    wire [3:0]x;
    
    Comparator C1(in1,in2,out,x);
    
    initial begin
        
        in1 = 4'h0; in2 = 4'h0;
        #20 in1 = 4'h2; in2 = 4'h1;
        #20 in1 = 4'h1; in2 = 4'h3;
        #20 in1 = 4'h4; in2 = 4'h4;
        #20 in1 = 4'h7; in2 = 4'h6;
        #20 in1 = 4'ha; in2 = 4'hc;
        #20 in1 = 4'h0; in2 = 4'h2;
        
    end   

endmodule
