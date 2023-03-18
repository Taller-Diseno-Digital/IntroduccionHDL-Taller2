module left_shift_arith #(parameter width = 2)
									(input logic signed [width-1:0] in_data,
									 output logic signed [width-1:0] out_data);


  always_comb begin
  
    for (int i = 0; i < width; i++) begin
	 
      if (i < 1) //LSB
        out_data[i] = 1'b0;
		  
      else
        out_data[i] = in_data[i - 1];
    end
  end
	
endmodule