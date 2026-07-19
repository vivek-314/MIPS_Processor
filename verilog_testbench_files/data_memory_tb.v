`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 02:41:16 PM
// Design Name: 
// Module Name: data_memory_tb
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

module data_memory_tb();

reg clk;
reg mem_write;
reg mem_read;
reg [15:0] address;
reg [15:0] write_data;

wire [15:0] read_data;

data_memory uut(.clk(clk),.mem_write(mem_write),.mem_read(mem_read),.address(address),.write_data(write_data),.read_data(read_data));

always #5 clk = ~clk;

initial begin
    // Initialize signals
    clk = 0;
    mem_write = 0;
    mem_read = 0;
    address = 0;
    write_data = 0;

    // Write 25 to address 0
    #2;
    mem_write = 1;
    address = 16'd0;
    write_data = 16'd25;
    #10;

    // Write 50 to address 2
    address = 16'd2;
    write_data = 16'd50;
    #10;

    // Stop writing
    mem_write = 0;

    // Read address 0
    mem_read = 1;
    address = 16'd0;
    #10;

    // Read address 2
    address = 16'd2;
    #10;

    // Stop reading
    mem_read = 0;
    #10;

    $finish;
end

endmodule
