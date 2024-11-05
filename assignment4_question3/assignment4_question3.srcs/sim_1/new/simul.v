`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 16:00:05
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
reg [7:0]a,b;
wire [7:0]s;

csa8bit uut(a,b,s);
initial
begin
a=8'b01010000;
b=8'b00001111;
end

endmodule


//module simulation();
//reg z;
//reg [3:0] a , b;
//wire [7:0]c;

//try uut(z,a,b,c);
//initial
//begin

//a=4'b0000;
//b=4'b1111;
//z=1'b0;

//#20;

//z=1'b1;

//end

//endmodule
