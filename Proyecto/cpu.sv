module cpu(input logic clk, rst);

logic [31:0] pc, pc_out, Inst, RD1, RD2, ExtImm, SrcA, SrcB, ALUResult, ReadData, Result;
logic PCSrc, MemtoReg, MemWrite, ALUControl, RegWrite, cout, negativa, zero;
logic [1:0] ALUSrc, ImmSrc, RegSrc;
logic [3:0] RA1, RA2;


program_counter pc_inst(.clk(clk), .rst(rst), .PC(pc), .PC_out(pc_out));


data rom_inst(.address(pc_out), .clock(clk), .q(Inst));


control_unit contol_inst(.clk(clk), .rst(rst), .Cond(Inst[31:28]), .ALUFlags({negative, zero, cout, 0}), .Op(Inst[27:26]),
				.Funct(Inst[25:20]), . Rd(Inst[15:12]), .PCSrc(PCSrc), .RegWrite(RegWrite), 
				.MemWrite(MemWrite), .MemtoReg(MemtoReg),  .ALUSrc(ALUSrc), .ImmSrc(ImmSrc), 
				.RegSrc(RegSrc), .ALUControl(ALUControl));
				
				
mux2_1 mux_RA1(.data0(Inst[19:16]), .data1(4'b1111), .select(RegSrc[0]), .result(RA1));


mux2_1 mux_RA2(.data0(Inst[3:0]), .data1(Inst[15:12]), .select(RegSrc[1]), .result(RA2));

							
register_file reg_inst(.clk(clk), .rst(rst), .A1(RA1), .A2(RA2), .A3(Inst[15:12]), .WD3(Result), //falta
								.R15(falta), .WE3(RegWrite), .RD1(RD1), .RD2(RD2)); 
								
extend ext_inst(.Inst(Inst[23:0]), .ImmSrc(ImmSrc), .ExtImm(ExtImm));

mux2_1 mux_RA2(.data0(RD2), .data1(ExtImm), .select(ALUSrc), .result(SrcB));


mod_alu #(.width(32)) alu(.a(SrcA), b(SrcB), .sel(ALUControl), .cout(cout), 
									.negative_out(negative), zero(zero), .result(ALUResult));

memory mem(.address(ALUResult), .clock(clk), .data(RD2), .wren(MemWrite), .q(ReadData));

mux2_1 mux_RA2(.data1(ReadData), .data0(ALUResult), .select(MemtoReg), .result(Result));

mux2_1 mux_RA2(.data0(falta), .data1(Result), .select(PCSrc), .result(pc));

endmodule 