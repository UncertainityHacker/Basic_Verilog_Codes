`timescale 1ns / 1ps

module Comparator(
    input [3:0] IN1,
    input [3:0] IN2,
    output reg [1:0] OUT,
    output [3:0] x
    );
    
    integer i;
    assign x[0] = IN1[0]^~IN2[0];
    assign x[1] = IN1[1]^~IN2[1];
    assign x[2] = IN1[2]^~IN2[2];
    assign x[3] = IN1[3]^~IN2[3];
    
    always @(IN1 or IN2)
    begin
        if(IN1 == IN2) OUT = 3'b000;
        else if (IN1 > IN2)
            OUT = 3'b001;
        else if (IN1 < IN2)
            OUT = 3'b010;
    end
    
endmodule
