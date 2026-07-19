`timescale 1ns / 1ps
module mips_processor_tb();

reg clk;
reg reset;

mips_processor uut(
    .clk(clk),
    .reset(reset)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #70;

    $finish;
end

endmodule
