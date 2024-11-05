`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 14:10:46
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(input [15:0]in_data ,
input en,
output reg [3:0]out_data,
output reg valid);


always @(in_data)
begin
    if(!en)
    begin
        valid <=(~en);
        casex (in_data)
        16'b1xxxxxxxxxxxxxxx : out_data=4'd0;
        16'b01xxxxxxxxxxxxxx : out_data=4'd2;
        16'b001xxxxxxxxxxxxx : out_data=4'd4;
        16'b0001xxxxxxxxxxxx : out_data=4'd6;
        16'b00001xxxxxxxxxxx : out_data=4'd8;
        16'b000001xxxxxxxxxx : out_data=4'd10;
        16'b0000001xxxxxxxxx : out_data=4'd12;
        16'b00000001xxxxxxxx : out_data=4'd14;
        16'b000000001xxxxxxx : out_data=4'd15;
        16'b0000000001xxxxxx : out_data=4'd13;
        16'b00000000001xxxxx : out_data=4'd11;
        16'b000000000001xxxx : out_data=4'd9;
        16'b0000000000001xxx : out_data=4'd7;
        16'b00000000000001xx : out_data=4'd5;
        16'b000000000000001x : out_data=4'd3;
        16'b0000000000000001 : out_data=4'd1;
        default : out_data=4'dx;
        endcase
    end
    
    else
    begin
        assign out_data=4'dx;
        valid <= (~en);
    end
end
endmodule




