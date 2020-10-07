`timescale 1ns / 1ps

module test_MUXTree16();
    
    reg [15:0]in;
    reg [3:0]s;
    wire out;
    
    MUXTree16 mt(in,s,out);
    
    initial begin
        in = 16'h 0001; s = 4'b0000;
        #10 in = 16'h 0200; s = 4'b0010;
        #10 in = 16'h 0020; s = 4'b0001;
        #10 in = 16'h 00a0; s = 4'b1011;
        #10 in = 16'h 0050; s = 4'b1000;
        #10 in = 16'h 0100; s = 4'b0101;
        #10 in = 16'h 0023; s = 4'b0100;
        #10 in = 16'h 8010; s = 4'b1010;
        #10 in = 16'h 0c00; s = 4'b1101;
        #10 in = 16'h 4001; s = 4'b0101;
        #10 in = 16'h a100; s = 4'b0010;
        #10 in = 16'h d000; s = 4'b0110;
        #10 in = 16'h 0630; s = 4'b1100;
        #10 in = 16'h 0780; s = 4'b1110;
        #10 in = 16'h a100; s = 4'b0010;
        #10 in = 16'h c800; s = 4'b0110;
    end 

endmodule
