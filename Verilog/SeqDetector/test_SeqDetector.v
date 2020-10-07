`timescale 1ns / 1ps

module test_SeqDetector();

    reg clk=0,rst=0,x;
    wire y;
    
    always #10 clk=~clk;
    SeqDetector SD1(rst,clk,x,y);
    
    initial begin
        #5 rst=1;x=0;
        #10 rst=0;
        #8 x=1; #20 x=0; #20 x=1; #10 x=1;
        #8 x=1; #10 x=0; #10 x=1; #10 x=0;
        #8 x=1; #10 x=0; #10 x=0; #10 x=1;
    end

endmodule
