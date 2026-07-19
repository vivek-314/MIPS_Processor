`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 03:56:46 PM
// Design Name: 
// Module Name: sign_extend_tb
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


module sign_extend_tb();

reg [6:0] imm;
wire [15:0] imm_ext;

sign_extend uut(.imm(imm),.imm_ext(imm_ext)
);

initial begin

    imm = 7'b0000101;   // +5
    #10;

    imm = 7'b1111011;   // -5
    #10;

    $finish;
end

endmodule
