`timescale 1ns / 1ps

module Counter_15bit(
    input clk,
    input rst,
    input en,
    output [15:0] out
    );
    
    integer count;
    
    assign out = count; 
    
    always @(posedge clk) begin
        if(rst) count =0;
        else begin
            if(en == 1) begin
                count = count + 1;
            end
        end
    end
    
endmodule
