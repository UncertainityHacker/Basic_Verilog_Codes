`timescale 1ns / 1ps

module test_Encoder();

    reg [7:0] in;
    reg en,clk=0;
    wire [2:0]out;
    
    always #10 clk=~clk;
    
    Encoder E1(clk,en,in,out);
    
    initial begin
        #10 en = 0 ; in = 8'h00;
        #10 en = 1 ; in = 8'h00;
        #10 en = 1 ; in = 8'h01;
        #10 en = 1 ; in = 8'h02;
        #10 en = 1 ; in = 8'h03;
        #10 en = 1 ; in = 8'h04;
        #10 en = 1 ; in = 8'h05;
        #10 en = 1 ; in = 8'ha0;
        #10 en = 1 ; in = 8'h0c;    
    end

endmodule
