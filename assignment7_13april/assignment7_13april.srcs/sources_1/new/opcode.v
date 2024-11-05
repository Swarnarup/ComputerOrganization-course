`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2023 13:13:04
// Design Name: 
// Module Name: alu
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


//module alu(input [3:0] a,b,
//input [2:0] opcode,
//output [3:0] c);

//begin
//if (opcode[2:0] == 000)
//begin
//assign c=a+b ;
//end
//end

//endmodule



module ALUu(a,b,opcode,c);
input [3:0] a,b;
input [2:0] opcode;
output reg[3:0] c;

reg [7:0] out;


always @(opcode or a or b)
begin

if(opcode==3'd0)
begin
    c=a+b;
end
else if(opcode==3'd1)
begin
    c=a-b;
end
else if(opcode==3'd2)
begin
    out=a*b;
    c=out[3:0];
end
else if(opcode==3'd3)
begin
    c=a&b;
end
else if(opcode==3'd4)
begin
    c=a|b;
end
else if(opcode==3'd5)
begin
    c=a^b;
end
else if(opcode==3'd6)
begin
    c=~a;
end
else if(opcode==3'd7)
begin
    c=a;
end
end
endmodule
