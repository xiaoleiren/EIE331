To create a 4-bit image for Kentec displays on LM4F120 or TM4C123G
Jonathan Valvano, 11/6/2017
See BmpConvert.cpp for how it works
1) Create a bmp file
   width less than or equal to 320 pixels
   height less than or equal 240 pixels
   save the image as a 4-bit (16-color) bmp file
   4-bit files do not capture the palette, so you will have to experiment to see how colors are mapped
   store in same directory as BmpConvert.exe
2) Execute BmpConvert.exe
   Type the image name 
   E.g., if the file is red.bmp, then type red
3) Open the corresponding txt file, select all, copy
4) Open uVision compiler
   paste new image as an image constant
5) Draw the image by calling LCD_DrawBMP
   E.g., center a 32 by 32 image
         LCD_DrawBMP(red,320/2-16,240/2-16);


To create a 24-bit image for Kentec displays on LM4F120 or TM4C123G
Jonathan Valvano, 11/6/2017
See BmpConvert.cpp for how it works
1) Create a bmp file
   width less than or equal to 320 pixels
   height less than or equal 240 pixels
   save the image as a 24-bit bmp file
   store in same directory as BmpConvert.exe
   24-bit images have accurate color mapping, but are large
2) Execute BmpConvert.exe
   Type the image name 
   E.g., if the file is red24bit.bmp, then type red24bit
3) Open the corresponding txt file, select all, copy
4) Open uVision compiler
   paste new image as an image constant
5) Draw the image by calling LCD_DrawBMP
   E.g., center a 32 by 32 image
         LCD_DrawBMP(red24bit,320/2-16,240/2-16);

