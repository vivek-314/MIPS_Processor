`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 01:24:59 PM
// Design Name: 
// Module Name: register_tb
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


module register_tb;

reg clk;
reg reg_write;
reg [2:0] rs, rt, rd;
reg [15:0] write_data;

wire [15:0] read_data1;
wire [15:0] read_data2;

register uut(.clk(clk),.reg_write(reg_write),.rs(rs),.rt(rt),.rd(rd),.write_data(write_data),.read_data1(read_data1),.read_data2(read_data2)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reg_write = 0;
    rs = 0;
    rt = 0;
    rd = 0;
    write_data = 0;

    #5;

    reg_write = 1;
    rd = 3'd1;
    write_data = 16'd25;
    #10;

    rd = 3'd2;
    write_data = 16'd50;
    #10;

    reg_write = 0;
    rs = 3'd1;
    rt = 3'd2;
    #10;

    $finish;
end


endmodule
