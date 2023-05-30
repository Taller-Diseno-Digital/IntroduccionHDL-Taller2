module alu_decoder_tb();


logic [3:0]funct4_1;
logic funct0;
logic op;
logic [1:0] alu_control;
logic [1:0] flag;
logic  noWrite;



alu_decoder alu_decoder_inst(funct4_1, funct0, op, alu_control, flag, noWrite);

initial begin

funct4_1 = 4'b0000;
funct0 = 1'b0;
op = 1'b0;
alu_control= 2'b00;
flag = 2'b00;
noWrite = 1'b0;

#5;

funct4_1 = 4'b0100;
funct0 = 0;
op = 1;

#5;


funct0 = 1;


#5

funct4_1 = 4'b0010;
funct0 = 0;


#5;

funct0 = 1;

#5;

funct4_1 = 4'b0000;
funct0 = 0;

#5;

funct0 = 1;

#5;

funct4_1 = 4'b1100;
funct0 = 0;

#5;

funct0 = 1;

#5;

funct4_1 = 4'b1010;
funct0 = 0;

#5;

funct0 = 1;

#5;

end 
endmodule