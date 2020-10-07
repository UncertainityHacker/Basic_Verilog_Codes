`timescale 1ns / 1ps

module test_MUXTree32();

    reg [31:0]in;reg [4:0]s;
    wire out;
    
    MUXTree32 m(in,s,out);
    
    initial begin
        in = 32'h0001 ; s = 4'h0;
        #50 in = 32'h0001 ; s = 4'h0;
        #50 in = 32'h0000 ; s = 4'ha;
        #50 in = 32'h0005 ; s = 4'h5;
        #50 in = 32'h00e7 ; s = 4'h7;
        #50 in = 32'h0000 ; s = 4'h6;
        #50 in = 32'h0802 ; s = 4'h8;
    end

endmodule
