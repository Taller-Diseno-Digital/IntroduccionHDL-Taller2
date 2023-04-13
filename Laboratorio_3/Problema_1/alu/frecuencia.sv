module frecuencia #(parameter width = 32)(
	 input logic clk,  
	 input logic reset,
    input logic [width - 1 : 0] a,b,
	 input [3:0] sel,
    output logic cout,negative,zero,
    output logic [width - 1 : 0] result
);

reg [width - 1 : 0] reg_a;
reg [width - 1 : 0] reg_b;
reg [3:0] reg_sel;
reg [width - 1 : 0] reg_result;  // Registro de salida
reg reg_cout, reg_negative, reg_zero;

reg_in #(.width(width)) regin(clk, reset, a, b, sel, reg_a, reg_b, reg_sel);
mod_alu #(.width(width)) alu(reg_a, reg_b, reg_sel, reg_cout, reg_negative, reg_zero, reg_result);
reg_out #(.width(width)) regout(clk, reset, reg_result, reg_cout, reg_negative, reg_zero, result, cout, negative, zero);

endmodule