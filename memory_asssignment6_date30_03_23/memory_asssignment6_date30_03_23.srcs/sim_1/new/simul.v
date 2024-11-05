`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2023 14:14:22
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


module simulation;

reg [1:0]a;
wire [1:0]b;

inverter uut(a,b);
integer f1;
integer i;

reg [1:0] test_mem[0:11];

initial
begin
f1 = $fopen("my_inv.txt","w");

$fdisplay(f1,"a"," ","b");
$readmemb("my_file.txt",test_mem);
$fmonitor(f1,"%b %b",a,b);

for(i = 0 ; i<=11;i = i+1)
begin
    a=test_mem[i];
    #10;
end

$fclose(f1);
end
endmodule


//module simulation;
//reg clk,rst,read,write;
//reg [3:0]wr_data,write_addr,read_addr;
//wire [3:0]rd_data;
//wire rd_done,wr_done;


//sram_16x4 uut(clk,rst,read,write,wr_data,write_addr,read_addr,rd_data,wr_done,rd_done);

//always #1 clk=~clk;

//initial
//begin
//clk=0;
//rst=1;
//read=1;
//read_addr=4'b0010;

//#10;
//rst=0;
//read=0;

//write=1;
//wr_data=4'b1111;
//write_addr=4'b0010;


//#10;

//write=0;
//read=0;
//#10;
//read=1;
//read_addr=4'b0010;
//#10;
//read_addr=4'b0011;
//#10;
//read_addr=4'b0001;
//#10;
//read_addr=4'b0100;
//write=1;
//write_addr=4'b0010;
//wr_data=4'b1110;
//#10;
//wr_data=4'b1111;
//write_addr=4'b0100;
//#10
//read_addr=4'b0010;
//#10;
//read_addr=4'b0011;
//#10;
//read_addr=4'b0001;
//#10;
//read_addr=4'b0100;

//#10;
//read=0;
//write=0;




//end
//endmodule

