module right_shift_logical #(parameter width)
									(input logic signed [width-1:0] in_data,
									 output logic signed [width-1:0] out_data);


  always_comb begin
  
    for (int i = 0; i < width; i++) begin
	 
      if (i >= width - 1) //MSB
		
        data_out[i] = 1'b0;
		  
      else
        data_out[i] = data_in[i + 1];
    end
  end
	
endmodule