`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 21:43:55
// Design Name: 
// Module Name: test_mux
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


module test_mux(input a,b,s,
output y);
wire s_b,temp1,temp2;
assign s_b=~s;
assign temp1=a&b;
assign temp2=b&s_b;
assign y=temp1|temp2;

endmodule

module logic(input a,b,
output y);
test_mux(1'b0,b,a,y);
endmodule