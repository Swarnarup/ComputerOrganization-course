`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 21:50:21
// Design Name: 
// Module Name: mux_simulation
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


module mux_simulation;
reg a;
reg b;
reg s;
wire y;
test_mux uut(.a(a),.b(b),.s(s),.y(y));
initial begin
a=1'b0;
b=1'b0;
s=1'b0;

#10;

s=0;
a=0;
b=1;

#10;

s=0;
a=1;
b=0;

#10;

s=0;
a=1;
b=1;

#10;

s=1;
a=0;
b=0;

#10;

s=1;
a=0;
b=1;

#10;

s=1;
a=1;
b=0;

#10;

s=1;
a=1;
b=1;

end
endmodule
