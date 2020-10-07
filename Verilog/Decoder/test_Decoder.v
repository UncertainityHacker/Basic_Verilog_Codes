`timescale 1ns / 1ps

module test_Decoder();

    reg [2:0]in;
    wire [7:0]out;
    
    Decoder D1(in,out);
    
    initial begin 
        
        in = 3'b 000;
        #10 in = 3'b 001;
        #10 in = 3'b 010;
        #10 in = 3'b 011;
        #10 in = 3'b 100;
        #10 in = 3'b 101;
        #10 in = 3'b 110;
        #10 in = 3'b 111;       
    
    end

endmodule
