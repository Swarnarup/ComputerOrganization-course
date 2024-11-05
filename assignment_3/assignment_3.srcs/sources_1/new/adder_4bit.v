`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 15:15:29
// Design Name: 
// Module Name: adder_4bit
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




module cla(input x,y,cin,
output g , p, s);

assign g=x&y;
assign p=x|y;
assign s=x^y^cin;
endmodule


module adder_4bit(input [3:0] a , [3:0] b, input cin ,
output [3:0]s , output c);

wire g0,g1,g2,g3,p0,p1,p2,p3;

cla aa(a[0],b[0],cin , g0,p0,s[0]);
cla aaa(a[1],b[1], g0|(p0&cin) , g1,p1,s[1]);
cla aaaa(a[2],b[2], g1 | (p1&g0) | (p1&p0&cin) , g2,p2,s[2]);
cla aaaaa(a[3],b[3], g2|(p2&(g1 | (p1&g0) | (p1&p0&cin))) , g3,p3,s[3]);

assign c = g3 |( p3 & (g2|(p2&(g1 | (p1&g0) | (p1&p0&cin)))));

//assign p = p0&p1&p2&p3 ;

endmodule



//module cla_4bit(input [3:0] a , [3:0] b, input cin,
//output [3:0] s , output c);

//assign 


module add_8bit(input [7:0] a , [7:0] b, input cin ,
output [8:0]s , output c);

wire cc0 ;

adder_4bit bb(a[3:0] , b[3:0] , cin , s[3:0] , cc0);
adder_4bit bbb(a[7:4] , b[7:4] , cc0 , s[7:4] , s[8]);
assign c = s[8];

endmodule