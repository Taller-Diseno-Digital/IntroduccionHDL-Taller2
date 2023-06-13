module mod_mux16 #(parameter width = 4) (
  input logic[width-1:0] d0,d1,
  input logic[3:0] sel, // selector de entrada de 4 bits
  output logic[width-1:0] result // salida de datos
);


always @(*) begin
  case (sel)
    4'b0000: result <= d0;
    4'b0001: result <= d1;
    default: result <= 16'hxxxx;
  endcase
end

endmodule