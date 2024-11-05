`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 10:42:47
// Design Name: 
// Module Name: dff
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


module dff(clk,en,start,di,d,q);
input clk,en,start,di,d;
output  q;
reg t1;
always @(clk,en,start)
begin
    case({clk,start})
        
        2'b11: t1=di;
        2'b10: t1=d;
        endcase
end
assign q=(~en ? t1:0);
endmodule
