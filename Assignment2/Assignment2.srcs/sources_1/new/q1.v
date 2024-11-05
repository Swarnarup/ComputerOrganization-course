`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2023 14:12:31
// Design Name: 
// Module Name: mux_8x1
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


module mux_8x1(input en,a,b,c,d,e,f,g,h,s0,s1,s2,
output y);
assign y=(~en)&((a&~s0&~s1&~s2)+(b&~s0&~s1&s2)+(c&~s0&s1&~s2)+(d&s0&~s1&~s2)+(e&~s0&s1&s2)+(f&s0&~s1&s2)+(g&s0&s1&~s2)+(h&s0&s1&s2));

endmodule



