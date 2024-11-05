`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 23:08:33
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
reg clk,en;
reg [3:0] a,b;
wire [7:0] pp;
wire done;

bmp4bit uut(clk,en,a,b,pp,done);

always #10 clk=~clk;

initial
begin
clk=0;
#200;
en=1'b0;
a=4'b1100;
b=4'b1100;
#100;
en=1'b1;
a=4'b1100;
b=4'b1100;
#50;
$finish;
end
endmodule
