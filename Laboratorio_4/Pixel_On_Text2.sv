module Pixel_On_Text2 #(parameter width string = "Bienvenido al Juego!")(
input   clk; 
input   [31:0] positionX, 
input   [31:0] positionY, 
input   [31:0] horzCoord, 
input   [31:0] vertCoord, 
output   pixel);

logic pixel_tem; 
localparam ADDR_WIDTH = 11; 
localparam DATA_WIDTH = 8; 
localparam FONT_WIDTH = 8; 
localparam FONT_HEIGHT = 16; 
int fontAddress; 

reg     [FONT_WIDTH - 1:0] charBitInRow; 
int charCode; 
int charPosition; 
int bitPosition; 
logic      pixelOn_inXRange; 
logic      pixelOn_inYRange; 

initial 
   begin : process_6
   pixelOn_inYRange = `false;   
   end

initial 
   begin : process_5
   pixelOn_inXRange = `false;   
   end

initial 
   begin : process_4
   bitPosition = 0;   
   end

initial 
   begin : process_3
   charPosition = 0;   
   end

initial 
   begin : process_2
   charCode = 0;   
   end

initial 
   begin : process_1
   charBitInRow = {(FONT_WIDTH - 1 - 0 + 1){1'b 0}};   
   end


always @( horzCoord or positionX ) 
charPosition = (horzCoord - positionX) / FONT_WIDTH + 1; 

always @( horzCoord or positionX ) 
bitPosition = (horzCoord - positionX) % FONT_WIDTH; 

initial 
   charCode = character /* ignored attribute: 'pos */[displayText[charPosition]]; 

//  charCode*16: first row of the char
assign fontAddress = charCode * 16 + (vertCoord - positionY); 
Font_Rom FontRom (.clk(clk),
          .addr(fontAddress),
          .fontRow(charBitInRow));

always @(posedge clk)
   begin : pixelOn
   if (clk === 1'b 1)
      begin

//  reset
      pixelOn_inXRange = `false;   
      pixelOn_inYRange = `false;   
      pixel <= 1'b 0;   

//  If current pixel is in the horizontal range of text
      if (horzCoord >= positionX & horzCoord < positionX + 
      FONT_WIDTH * displayText /* ignored attribute: 'length */)
         begin
         pixelOn_inXRange = `true;   
         end

//  If current pixel is in the vertical range of text
      if (vertCoord >= positionY & vertCoord < positionY + 
      FONT_HEIGHT)
         begin
         pixelOn_inYRange = `true;   
         end

//  need to check if the pixel is on for text
      if (pixelOn_inXRange & pixelOn_inYRange)
         begin

//  FONT_WIDTH-bitPosition: we are reverting the charactor
         if (charBitInRow[FONT_WIDTH - bitPosition] === 1'b 1)
            begin
            pixel <= 1'b 1;   
            end
         end
      end
   end


endmodule // module Pixel_On_Text2

