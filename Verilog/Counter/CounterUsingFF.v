`timescale 1ns / 1ps

module JKFF(
    input clk,
    input clr,
    input rst,
    input J,input K,
    output reg Q,
    output reg Qbar
    );
    
    always @(posedge clk or rst or clr) begin
        if(clr == 1) begin
                        Q = 0; Qbar = 1;
                     end
        else if(rst == 1)begin
                            Q=1; Qbar=0;
                         end
        else begin
            case ({J,K})
                2'b00 : begin
                            Q = Q;
                            Qbar = Qbar;
                        end
                2'b01: begin
                            Q = 1;
                            Qbar = 0;
                        end
                2'b10 : begin
                            Q = 0;
                            Qbar = 1;
                        end
                2'b11 : begin
                            Q = ~Q;
                            Qbar = ~Qbar;
                        end
            endcase
        end
    end
endmodule

module CounterUsingFF(
    input clr,
    input prst,
    input clk,
    output [3:0] OUT
    );
    
    JKFF J1(clk,clr,prst,1,1,OUT[0]);
    JKFF J2(OUT[0],clr,prst,1,1,OUT[1]);
    JKFF J3(OUT[1],clr,prst,1,1,OUT[2]);
    JKFF J4(OUT[2],clr,prst,1,1,OUT[3]);
    
endmodule
