`timescale 1ns / 1ps

module test_HalfSubtractor();

    reg a,b;
    wire diff,borrow;
    
    HalfSubtractor HS1(a,b,diff,borrow);
    
    initial begin
        a=0; b=0;
        #20 a=0; b=1;
        #20 a=1; b=0;
        #20 a=1; b=1;
    end

endmodule
