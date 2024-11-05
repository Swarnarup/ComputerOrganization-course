`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2023 12:39:05
// Design Name: 
// Module Name: sram_16x4
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


module sram_16x4(
input clk,
input rst,
input read,
input write,
input [3:0]wr_data,
input [3:0]write_addr,read_addr,
output reg [3:0]rd_data,
output reg wr_done,rd_done
);

parameter addr_width = 4;
parameter mem_size = 15;
parameter data_width = 3;

reg [data_width:0] temp_mem[0:mem_size];

always@(posedge clk)
begin
    if (rst)
    begin
        wr_done<=0;
        rd_done<=0;
    end
    else
    begin
        if (write)
        begin
            temp_mem[write_addr] <= wr_data;
            wr_done <= 1;
        end
        else
        begin
            wr_done <= 0;
        end
        if (read)
        begin
            rd_data <= temp_mem[read_addr];
            rd_done <= 1;
        end
        else
        begin
            rd_done <= 0;
        end 
    end
end

endmodule



//module inverter(input [1:0]a,
//output [1:0] b);
//assign b=~a;

//endmodule