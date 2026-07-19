`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 02:07:01 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();

reg [15:0] a;
reg [15:0] b;
reg [2:0] alu_control;

wire [15:0] result;
wire zero;

alu uut(.a(a),.b(b),.alu_control(alu_control),.result(result),.zero(zero));

initial begin

    // ADD
    a = 16'd10;b = 16'd5;alu_control = 3'b000;
    #10;

    // SUB
    a = 16'd10;b = 16'd5;alu_control = 3'b001;
    #10;

    // AND
    a = 16'd10;b = 16'd5;alu_control = 3'b010;
    #10;

    // OR
    a = 16'd10;b = 16'd5;alu_control = 3'b011;
    #10;

    // SLT : 5 < 10
    a = 16'd5;b = 16'd10;alu_control = 3'b100;
    #10;

    // SLT : 10 < 5
    a = 16'd10;b = 16'd5;alu_control = 3'b100;
    #10;

    $finish;
end

endmodule
