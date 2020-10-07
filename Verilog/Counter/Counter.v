`timescale 1ns / 1ps
//BCD counter
module Counter(
    input clk,
    input rst,
    output [3:0] OUT
    );
    
    reg [3:0] state; 
    parameter s0=4'h0, s1=4'h1, s2=4'h2, s3=4'h3, s4=4'h4, s5=4'h5, s6=4'h6, s7=4'h7, s8=4'h8, s9=4'h9;
    
    always@(posedge clk, rst) begin
        
        if( rst == 1 ) state <= s0;
        else case(state)
            s0 : state = s1;
            s1 : state = s2;
            s2 : state = s3;
            s3 : state = s4;
            s4 : state = s5;
            s5 : state = s6;
            s6 : state = s7;
            s7 : state = s8;
            s8 : state = s9;
            s9 : state = s0;
            endcase
    end
    
    assign OUT = state;
    
endmodule
