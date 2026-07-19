`timescale 1ns / 1ps


module sign_extend(
    input [6:0] imm,
    output [15:0] imm_ext
);

assign imm_ext = {{9{imm[6]}}, imm};

endmodule
