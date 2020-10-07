`timescale 1ns / 1ps

module test_CounterUsingFF();
    
    reg clk=0,clr,prst;
    wire [3:0] downCount;
    
    always #10 clk = ~clk;
    
    CounterUsingFF c1(clr,prst,clk,downCount);
    
    initial begin
    
        clr = 1; prst = 0;
        #20 clr = 0; prst = 1;
        #20 clr = 0; prst = 0;
    
    end
    
endmodule
