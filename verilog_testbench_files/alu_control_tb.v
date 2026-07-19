`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 04:38:50 PM
// Design Name: 
// Module Name: alu_control_tb
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


module alu_control_tb();

reg [1:0] alu_op;
reg [3:0] funct;
wire [2:0] alu_control;

alu_control uut(
    .alu_op(alu_op),
    .funct(funct),
    .alu_control(alu_control)
);

initial begin

    // addi/lw/sw
    alu_op = 2'b00;
    funct = 4'b0000;
    #10;

    // beq
    alu_op = 2'b01;
    #10;

    // R-type add
    alu_op = 2'b10;
    funct = 4'b0000;
    #10;

    // R-type sub
    funct = 4'b0001;
    #10;

    // and
    funct = 4'b0010;
    #10;

    // or
    funct = 4'b0011;
    #10;

    // slt
    funct = 4'b0100;
    #10;

    $finish;
end

endmodule
