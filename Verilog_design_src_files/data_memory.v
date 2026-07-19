`timescale 1ns / 1ps

module data_memory(
    input clk,
    input mem_write,
    input mem_read,
    input [15:0] address,
    input [15:0] write_data,
    output reg [15:0] read_data
);

reg [15:0] memory [0:255];

integer i;
initial begin
    for(i=0;i<256;i=i+1)
        memory[i] = 16'd0;
end

always @(posedge clk) begin
    if(mem_write)
        memory[address>>1] <= write_data;
end

always @(*) begin
    if(mem_read)
        read_data = memory[address>>1];
    else
        read_data = 16'd0;
end

endmodule
