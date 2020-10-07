`timescale 1ns / 1ps

module test_FullAdder();

    reg a,b,cin;
    wire s,cout;
    
    FullAdder FA1(a,b,cin,s,cout);
    
    initial begin
        a=0; b=0; cin=0;
        #10 a=0; b=0; cin=1;
        #10 a=0; b=1; cin=0;
        #10 a=0; b=1; cin=1;
        #10 a=1; b=0; cin=0;
        #10 a=1; b=0; cin=1;
        #10 a=1; b=1; cin=0;
        #10 a=1; b=1; cin=1;        
    end

endmodule
