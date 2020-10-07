`timescale 1ns / 1ps

module test_FlipFlop();

    reg D;
    reg clk=0;
    wire Q,Qbar;
    
    always #10 clk = ~clk;
    
    DFlipFlop DFF1(clk,D,Q,Qbar);
    
    initial begin
            D = 0;
        #10 D = 1;
        #20 D = 0;
        #20 D = 1;
        #30 D = 0;
        #10 D = 1;
        #20 D = 0;
        #20 D = 1;
        #30 D = 0;
        #10 D = 1;
    end

endmodule
