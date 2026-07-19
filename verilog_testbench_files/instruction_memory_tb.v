`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 01:10:24 PM
// Design Name: 
// Module Name: instruction_memory_tb
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


module instruction_memory_tb;

reg [15:0] address;
wire [15:0] instruction;

instruction_memory uut(.address(address),.instruction(instruction));

initial begin
    address = 0;
    #10;

    address = 2;
    #10;

    address = 4;
    #10;

    $finish;
end

endmodule