`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 12:55:18 PM
// Design Name: 
// Module Name: pc_tb
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


module pc_tb;

reg clk;
reg reset;
reg [15:0] pc_next;
wire [15:0] pc;

pc uut(.clk(clk),.reset(reset),.pc_next(pc_next),.pc(pc));

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    pc_next = 0;
    #10;
    
    reset = 0;
    pc_next = 16'd2;
    #10;

    pc_next = 16'd4;
    #10;

    pc_next = 16'd6;
    #10;

    $finish;
end

endmodule
