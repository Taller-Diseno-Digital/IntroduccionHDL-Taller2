module mod_alu #(parameter width = 4)(
    input logic [width - 1 : 0] a,b,
	 input [1:0] sel,
    output logic cout,negative,zero,
    output logic [width - 1 : 0] result
);
	
	logic [width-1:0] addition, m_and, m_or, not_b, sum_digit_2, complement, substracion, addition_temp;

	mod_not #(.width(width)) dut_not_b(b, not_b);

	mod_mux2 #(.width(width)) dut_mux2(b, not_b, sel[0], sum_digit_2);

	mod_sum #(.width(width)) dut_sum(a, sum_digit_2, sel[0], cout, addition_temp);

	mod_compare #(.width(width)) dut_compare(a, b, sel[0], negative, zero);

    mod_compl #(.width(width)) dut_complement(addition_temp, substracion);

    mod_mux2 #(.width(width)) dut_mux2_sub(addition_temp, substracion, negative, addition);
    
	mod_and #(.width(width)) dut_and(a, b, m_and);

	mod_or #(.width(width)) dut_or(a, b, m_or);

	mod_mux4 #(.width(width)) dut_mux4(addition,addition, m_and, m_or, sel, result);

      

endmodule