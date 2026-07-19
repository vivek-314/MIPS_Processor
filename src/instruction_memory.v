`timescale 1ns / 1ps


module instruction_memory(
    input [15:0] address,
    output [15:0] instruction
);

reg [15:0] memory [0:255];


integer i;

initial begin
    for(i=0;i<256;i=i+1)
        memory[i] = 16'h0000;

    $readmemh("program.mem", memory);
end

assign instruction = memory[address >> 1];

endmodule
