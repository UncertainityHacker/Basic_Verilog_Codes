`timescale 1ns / 1ps

module test_DeMUX();

    reg in,en;
    reg [2:0] s;
    wire [7:0]out;

    DeMUX DM1(en,in,s,out);
    
    initial begin
        en = 0;
        #10 en = 1;
        #10 in = 0; s = 3'b000;
        #10 in = 1; s = 3'b010;
        #10 in = 1; s = 3'b111;
        #10 in = 0; s = 3'b011;
        #10 in = 1; s = 3'b001;
        #10 in = 0; s = 3'b110;
        #10 in = 1; s = 3'b100;
    end

endmodule
