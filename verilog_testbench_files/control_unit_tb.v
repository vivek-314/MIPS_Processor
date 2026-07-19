`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 04:03:58 PM
// Design Name: 
// Module Name: control_unit_tb
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


module control_unit_tb();

reg [2:0] opcode;

wire reg_dst;
wire alu_src;
wire mem_to_reg;
wire reg_write;
wire mem_read;
wire mem_write;
wire branch;
wire [1:0] alu_op;

control_unit uut(.opcode(opcode),.reg_dst(reg_dst),.alu_src(alu_src),
    .mem_to_reg(mem_to_reg),
    .reg_write(reg_write),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .branch(branch),
    .alu_op(alu_op)
);

initial begin

    // R-type
    opcode = 3'b000;
    #10;

    // addi
    opcode = 3'b001;
    #10;

    // lw
    opcode = 3'b010;
    #10;

    // sw
    opcode = 3'b011;
    #10;

    // beq
    opcode = 3'b100;
    #10;
    
    // beq
    opcode = 3'b101;
    #10;
    
    // beq
    opcode = 3'b110;
    #10;
    
    // beq
    opcode = 3'b111;
    #10;
    
    

    $finish;
end

endmodule