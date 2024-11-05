`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 15:05:48
// Design Name: 
// Module Name: muxtes
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


module muxtest();
reg en,a,b,c,d,e,f,g,h,s0,s1,s2;
wire y,flag;
mux_8x1 uut(.en(en),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.s0(s0),.s1(s1),.s2(s2),.y(y),.flag(flag));

initial
begin

a=1'b1;
b=1'b1;
c=1'b1;
d=1'b1;
e=1'b1;
f=1'b1;
g=1'b1;
h=1'b1;

s0=1'b0;
s1=1'b0;
s2=1'b0;

en=1'b0;

end
endmodule
