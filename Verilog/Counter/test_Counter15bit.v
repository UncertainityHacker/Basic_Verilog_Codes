`timescale 1ns / 1ps

module test_Counter15bit();

    reg clk=0,rst,en;
    wire [15:0]out;
    
    always #20 clk =~clk;
    
    Counter_15bit C1(clk,rst,en,out);
    
    initial begin
        rst = 1; en = 0;
        #100 rst = 0; en = 1;
        #100 rst = 1; en = 0;
    end

endmodule
