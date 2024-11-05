`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 16:18:22
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


module simulation();
reg [7:0] a ,b ;
reg cin;
wire [8:0]s ;


add_8bit uut(a , b,cin,s,c);

initial
begin

a=8'b11111110;
b=8'b01011101;
cin=1'b0;

end
endmodule
