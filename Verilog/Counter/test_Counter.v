`timescale 1ns / 1ps

module test_Counter();
    
    reg clk=0 , rst;
    wire [3:0] out;
    
    Counter C1(clk,rst,out);
    
    always #10 clk=~clk;
    
    initial begin
        rst = 1;
        #10 rst = 0;
    end

endmodule
