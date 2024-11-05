`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2023 13:43:04
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

reg [3:0]a;
reg [3:0]b;
reg [2:0]opcode;

wire [3:0]c;

ALUu uut(a,b,opcode,c);
integer f1;
integer i;

reg [3:0] test_mem_a[0:11];
reg [3:0] test_mem_b[0:11];
reg [2:0] test_mem_opc[0:11];

initial
begin
f1 = $fopen("c.txt","w");

$fdisplay(f1,"c");
$readmemb("a.txt",test_mem_a);
$readmemb("b.txt",test_mem_b);
$readmemb("opcode.txt",test_mem_opc);

$fmonitor(f1,"%b",c);

for(i = 0 ; i<=11;i = i+1)
begin
    a=test_mem_a[i];
    b=test_mem_b[i];
    opcode=test_mem_opc[i];
    #10;
end

$fclose(f1);
end
endmodule
