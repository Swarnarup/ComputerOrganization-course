`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 15:08:37
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
reg clk , en ,gen , in;
wire [3:0]y;

ckt uut(clk,en,gen,in,y);
always #10 clk=~clk;
initial
begin
clk=1'b0;
en=1'b0;
gen=1'b0;
in=1'b1;
#11;
en=1'b1;
#20;
gen=1'b1;
#20;
in=1'b1;
#20;
in=1'b1;
#10;
in = 1'b0;

end
endmodule
