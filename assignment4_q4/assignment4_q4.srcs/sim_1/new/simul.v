`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 10:49:52
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

reg clk,en,start,di,d;
wire q;

dff uut(clk,en,start,di,d,q);



always #10 clk=~clk;

initial 

begin
clk = 1'b0;
start=1;di=1;d=0;en=0;
#20;
start=1;di=1;d=0;en=0;
#20;
start=0;di=1;d=0;en=1;
#20;
start=1;di=1;d=0;en=0;
#20;
start=1;di=1;d=0;en=1;
#20;
start=1;di=1;d=0;en=1;
#20;
$finish;
end
endmodule
