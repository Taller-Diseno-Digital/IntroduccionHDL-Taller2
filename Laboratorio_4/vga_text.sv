module vga_text(input logic [9:0] x, y, // position from VGA sync module
                input logic [255:0] text, // string to write
                input logic [9:0] start_x, start_y, // starting position on the screen
                output logic [7:0] r, g, b); // color of the font

    localparam FONT_WIDTH = 8; // width of each character in pixels
    localparam FONT_HEIGHT = 16; // height of each character in pixels
	 localparam H_PINTABLE = 640; // tamano de pantalla visible HORIZONTAL
	 localparam H_BORDE_IZQUIERDO = 48; // pixeles extra en el lado izquierdo
	 localparam V_BORDE_ARRIBA	= 10; // pixeles extra en el lado de arriba
    
    logic [9:0] text_x; // x position of the current character
    logic [9:0] text_y; // y position of the current character
    logic [5:0] char_index; // index of the current character in the string
    logic [5:0] char_row; // row of the current pixel within the character
    logic [7:0] char_col; // column of the current pixel within the character
    
    always_comb begin
        // calculate the current character's position based on the start position and the current x and y
        text_x = start_x + (x - H_BORDE_IZQUIERDO) - ((x - H_BORDE_IZQUIERDO) % FONT_WIDTH);
        text_y = start_y + (y - V_BORDE_ARRIBA) - ((y - V_BORDE_ARRIBA) % FONT_HEIGHT);
        
        // calculate the current pixel's position within the character
        char_row = (y - text_y) % FONT_HEIGHT;
        char_col = (x - text_x) % FONT_WIDTH;
        
        // calculate the current character index
        char_index = ((y - text_y) / FONT_HEIGHT) * (H_PINTABLE / FONT_WIDTH) + ((x - text_x) / FONT_WIDTH);
     
		  if (char_index >= text.size()) begin
            r = 255; g = 255; b = 255; // set color to black for areas without text
        end
		  
        // set the color of the font based on the current pixel within the character
        case (text[char_index])
            "A": begin r = 255; g = 0; b = 0;end
            "B": begin r = 0; g = 255; b = 0;end
            "C": begin r = 0; g = 0; b = 255;end
            default: begin r = 0; g = 0; b = 0; end
        endcase
    end
endmodule
