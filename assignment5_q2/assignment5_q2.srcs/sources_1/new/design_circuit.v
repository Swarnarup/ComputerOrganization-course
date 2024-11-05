`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 14:43:58
// Design Name: 
// Module Name: ckt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ckt(input clk,en,gen,in,
output reg [3:0] y);

always @ (posedge clk)
begin
    if(en==1'b0)
    begin
        y <= 4'b0000;
    end
    else
    begin
        if (gen == 1'b1)
        begin
            if (in == 1'b1)
            begin
                if (y[0] == 0)
                begin
                    y=y+4'b0010;
                end
                else
                begin
                    y=y+4'b0001;
                end
            end
            else
            begin
                if (y[0] == 0)
                begin
                    y=y+4'b0001;
                end
                else
                begin
                    y=y+4'b0010;
                end
            end
        end
        else
        begin
            y=y+4'b0000;
        end
    end    
end
endmodule
