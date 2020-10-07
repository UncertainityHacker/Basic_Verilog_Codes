`timescale 1ns / 1ps

module SeqDetector(
    input rst,
    input clk,
    input x,
    output reg y
    );
    
    reg [1:0]state;
    parameter s0= 2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
    
    always @(posedge clk or rst)
    begin
        if(rst==1)
            begin
                state = 0;
                y = 0;        
            end
        else 
        begin
            case(state)
            s0 : begin
                    state = x?s1:s0;
                    y = 0;
                 end
            s1 : begin
                    state = x?s1:s2;
                    y = 0;
                 end
            s2 : begin
                    state = x?s3:s0;
                    y = 0;
                 end
            s3 : begin
                    state = x?s1:s2;
                    y = 1;
                 end
            default : begin
                        state = s0;
                        y = 0;
                      end
            endcase
        end
       end
endmodule
