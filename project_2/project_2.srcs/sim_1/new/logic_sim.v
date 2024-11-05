`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 22:24:12
// Design Name: 
// Module Name: logic_sim
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


module logic_sim;
reg a;
reg b;

logic uut(.a(a),.b(b),.y(y));
initial begin
a=1'b0;
b=1'b0;

#10;

a=0;
b=1;

#10;

a=1;
b=0;

#10;

a=1;
b=1;

end
endmodule
