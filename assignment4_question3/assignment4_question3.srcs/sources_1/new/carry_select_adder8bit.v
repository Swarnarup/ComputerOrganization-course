`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 15:33:44
// Design Name: 
// Module Name: csa8bit
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


//  full adder  //


//module ha(input a,b,
//output c,s);

//   xor(s,a,b);
//    and(c,a,b);
//endmodule

//module fa(
//    input a,b,cin,
//    output s,c_out);
//wire c1,ss,c2;
//ha(a,b,c1,ss);
//ha(ss,cin,c2,s);

//or(c_out,c2,c1);

//endmodule

//module rca4bit(input [3:0]a,b,
//input c0,
//output [3:0]s,
//output c_out);
//wire c1,c2,c3;
//fa(a[0],b[0],c0,s[0],c1);
//fa(a[1],b[1],c1,s[1],c2);
//fa(a[2],b[2],c2,s[2],c3);
//fa(a[3],b[3],c3,s[3],c_out);

//endmodule



module fa(input a,b,cin,
output s,cout);

assign s=a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule

/////////////////////////////////////////////

module rca4bit(input [3:0] a , b ,
input c_in,
output [3:0] s ,
output c_out);


wire c1,c2,c3;
fa x(a[0],b[0],c_in,s[0],c1);
fa xx(a[1],b[1],c1,s[1],c2);
fa xxx(a[2],b[2],c2,s[2],c3);
fa xxxx(a[3],b[3],c3,s[3],c_out);
endmodule

/////////////////////////////////////////////

module csa8bit(input [7:0]aa,bb,
output [7:0]s);
wire cc,ccc,cccc;
wire [3:0]s0,s1;
rca4bit nm1(aa[3:0],bb[3:0],0,s[3:0],cc);
rca4bit nm2(aa[7:4],bb[7:4],0,s0,ccc);
rca4bit nm3(aa[7:4],bb[7:4],1,s1,cccc);


assign s[7:4] = (cc ? s1 : s0);

endmodule



//module try(input z,input [3:0]a,b,
//output [7:0]c);
//assign c[7:4] = (z ? a:b);
//assign c[3:0] = (z ? a:b);

//endmodule

