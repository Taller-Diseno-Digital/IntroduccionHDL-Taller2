module conditional_logic(
input logic Pcs,
input logic RegW,
input logic NoWrite,
input logic MemW,
input logic [1:0] FlagW,
input logic [3:0] Cond,
input logic [3:0] ALUFlags, 
output logic PCSrc,
output logic RegWrite,
output logic MemWrite
);

logic CondEx, not_noWrite;

conditional_check cond_inst(Cond, ALUFlags[0], ALUFlags[1], ALUFlags[2], CondEx);

and and_pcs(PCSrc, Pcs, CondEx);

not (not_noWrite, NoWrite);

and and_regWrite(RegWrite, RegW, not_noWrite, CondEx);

and(MemWrite, MemW, CondEx);

endmodule