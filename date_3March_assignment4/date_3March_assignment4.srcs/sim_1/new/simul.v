`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2023 16:18:02
// Design Name: 
// Module Name: simulation
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


module inverter_test;

reg y3,y2,y1,y0;
wire [1:0] a;

r uut(a,y0,y1,y2,y3);
initial 
begin
y0= 1; y1=1 ;y2=1 ; y3=1 ;
#20
y0= 0; y1=1 ; y2=1 ; y3=1 ;
#20
y0=0 ; y1=0 ; y2=0 ; y3=1 ;
end
endmodule