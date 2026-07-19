`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 02:05:56 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input [15:0] a,
    input [15:0] b,
    input [2:0] alu_control,
    output reg [15:0] result,
    output zero
);

always @(*) begin
    case (alu_control)
        3'b000: result = a + b;
        3'b001: result = a - b;
        3'b010: result = a & b;
        3'b011: result = a | b;
        3'b100: result = ($signed(a) < $signed(b)) ? 16'd1 : 16'd0;
        default: result = 16'd0;
    endcase
end

assign zero = (result == 16'd0);

endmodule
