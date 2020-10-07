`timescale 1ns / 1ps

module test_MUX8();

    reg [7:0] in; reg [2:0]s;
    wire out;
    
    MUX8 m(in,s,out);
    
    initial begin
        in = 8'h 00; s = 3'b000;
        #10 in = 8'h 02; s = 3'b010;
        #10 in = 8'h 20; s = 3'b001;
        #10 in = 8'h a0; s = 3'b011;
        #10 in = 8'h 05; s = 3'b000;
        #10 in = 8'h 01; s = 3'b001;
        #10 in = 8'h 00; s = 3'b010;
        #10 in = 8'h 80; s = 3'b100;
        #10 in = 8'h 0c; s = 3'b110;
        #10 in = 8'h 40; s = 3'b010;
        #10 in = 8'h a0; s = 3'b001;
        #10 in = 8'h d0; s = 3'b010;
        #10 in = 8'h 06; s = 3'b110;
        #10 in = 8'h 07; s = 3'b111;
        #10 in = 8'h a1; s = 3'b001;
        #10 in = 8'h c8; s = 3'b011;
    end

endmodule
