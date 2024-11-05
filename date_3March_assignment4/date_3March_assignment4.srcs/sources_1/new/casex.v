`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2023 16:04:26
// Design Name: 
// Module Name: casex
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


module top(y3 , y2 , y1 , y0, a0 , a1);
input y3 , y2 , y1 , y0;
output a0 , a1 ;

wire y2_bar , and_out;

not(y2_bar , y2);
and(and_out , y2_bar , y1);
or(a1 , y3 , y2);
or(a0 , and_out , y3);

endmodule


module r(a,y0,y1,y2,y3);
input y3,y2,y1,y0;
output reg [1:0] a;

always @({y0,y1,y2,y3})
begin
casex({y0,y1,y2,y3})

4'b1xxx : a=2'b00;
4'b01xx : a=2'b01;
4'b001x : a=2'b10;
4'b0001 : a=2'b11;
default : a=2'bx;
endcase
end
endmodule