module main_decoder_tb();

logic [1:0] Op;
logic Funct0;
logic Funct5;
logic RegW;
logic MemW;
logic MemtoReg;
logic ALUSrc;
logic Branch;
logic ALUOp;
logic [1:0] ImmSrc;
logic [1:0] RegSrc;



main_decoder main_deco_inst(Op, Funct0, Funct5, Branch, MemtoReg, MemW, ALUSrc, ImmSrc, RegW, RegSrc, ALUOp);

initial begin

Op = 2'b00;
Funct5 = 1'b0;
Funct0 = 1'b0;
Branch = 1'b0;
MemtoReg = 1'b0;
MemW = 1'b0;
ALUSrc = 1'b0;
ImmSrc = 1'b0;
RegW = 1'b0;
RegSrc = 1'b0;
ALUOp = 1'b0;

#5;


Op = 2'b00;
Funct5 = 1'b0;




#5;


Op = 2'b00;
Funct5 = 1'b1;





#5;


Op = 2'b01;

Funct0 = 1'b0;


#5;

Op = 2'b01;

Funct0 = 1'b1;

#5;

Op = 2'b10;

#5;


end

endmodule