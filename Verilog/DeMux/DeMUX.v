`timescale 1ns / 1ps

module DeMUX(
    input En,
    input IN,
    input [2:0] S,
    output reg [7:0] OUT
    );

    always @ (IN or S or En)
    begin
        if (En == 0) OUT = 0;
        else begin
            case(S)
            3'b 000 : begin 
                        OUT = 0;
                        OUT[0] = IN;
                      end
            3'b 001 : begin 
                        OUT = 0;
                        OUT[1] = IN;
                      end
            3'b 010 : begin 
                        OUT = 0;
                        OUT[2] = IN;
                      end
            3'b 011 : begin 
                        OUT = 0;
                        OUT[3] = IN;
                      end
            3'b 100 : begin 
                        OUT = 0;
                        OUT[4] = IN;
                      end
            3'b 101 : begin 
                        OUT = 0;
                        OUT[5] = IN;
                      end
            3'b 110 : begin 
                        OUT = 0;
                        OUT[6] = IN;
                      end
            3'b 111 : begin 
                        OUT = 0;
                        OUT[7] = IN;
                      end 
            endcase
        end
    end

endmodule
