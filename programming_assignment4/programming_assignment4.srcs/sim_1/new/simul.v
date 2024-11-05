`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 14:36:11
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
reg [15:0]in_data;
reg en;
wire [3:0]out_data;
wire valid;

priority_encoder uut(in_data,en,out_data,valid);
initial
begin
en=1'b0;
in_data=16'b0000010010010001;
#10;
in_data=16'b0000010110010001;
#10;
in_data=16'b0000010011010001;
#20;
en=1'b1;
in_data=16'b0000010010010001;
#10
in_data=16'b0000010110010001;
#10
in_data=16'b0000010011010001;

end
endmodule
