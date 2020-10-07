`timescale 1ns / 1ps

module test_FullSubtractor();

    reg a,b,bin;
    wire diff,bout;
    
    FullSubtractor FS1(a,b,bin,diff,bout);
    
    initial begin
        a=0; b=0; bin=0;
        #10 a=0; b=0; bin=1;
        #10 a=0; b=1; bin=0;
        #10 a=0; b=1; bin=1;
        #10 a=1; b=0; bin=0;
        #10 a=1; b=0; bin=1;
        #10 a=1; b=1; bin=0;
        #10 a=1; b=1; bin=1;
    end

endmodule
