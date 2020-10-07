`timescale 1ns / 1ps

module test_AdderSubtractor();

    reg [3:0]a;
    reg [3:0]b;
    reg s;
    wire [3:0] out;
    wire o;
    
    AdderSubtractor AS1(a,b,s,o,out);
    
    initial begin
        s=0; a=4'h0; b=4'h0;
        #10 s=0; a=4'h0; b=4'h1;
        #10 s=0; a=4'h6; b=4'h4;
        #10 s=0; a=4'hA; b=4'h4;
        #10 s=0; a=4'hC; b=4'h4;
        #10 s=1; a=4'h6; b=4'h4;
        #10 s=1; a=4'h2; b=4'h4;
        #10 s=1; a=4'h3; b=4'h2;        
    end

endmodule
