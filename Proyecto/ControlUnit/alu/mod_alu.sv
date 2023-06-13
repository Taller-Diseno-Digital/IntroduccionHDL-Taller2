module mod_alu #(parameter width = 4)(
    input logic [width - 1 : 0] a,b,
	 input logic [3:0] sel,
    output logic cout,negative_out,zero,
    output logic [width - 1 : 0] result
);
	logic cout_sum, zero_sum, negative;
	logic [width-1:0] addition, m_and, m_or, not_a, a_xor_b, l_shift, r_shift,la_shift, ra_shift;
	logic [width-1:0] not_b, sum_digit_2, complement, substracion, addition_temp;

	mod_not #(.width(width)) dut_not_b(b, not_b);

	mod_mux2 #(.width(width)) dut_mux2(b, not_b, sel[0], sum_digit_2);

	mod_sum #(.width(width)) dut_sum(a, sum_digit_2, sel[0], cout_sum, addition_temp);

	mod_compare #(.width(width)) dut_compare(a, b, sel[0], negative, zero_sum);

   mod_compl #(.width(width)) dut_complement(addition_temp, substracion);

   mod_mux2 #(.width(width)) dut_mux2_sub(addition_temp, substracion, negative, addition);

	mod_mux16 #(.width(width)) dut_mux16(addition,
										addition,
										sel,
										result);

always @(*) begin
  case (sel)
    4'b0000: cout <= cout_sum;
    default: cout <= 0;
  endcase
end


always @(*) begin
  case (sel)
    4'b0001: negative_out <= negative;
    default: negative_out <= 0;
  endcase
end

always_comb begin
	if(result == 4'b0000) zero <= 4'b0001;
	else 			zero <= 4'b0000;
end
	
endmodule