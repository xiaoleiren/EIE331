/* ************************************************************
 * AGM1264 example
 * ************************************************************ */
 
// TM4C123
// Jonathan Valvano 9/1/2019

// Copyright 2019 by Jonathan W. Valvano, valvano@mail.utexas.edu 
/    You may use, edit, run or distribute this file 
//    as long as the above copyright notice remains 

// Hardware LCD1030 from BG Micro (not tested):
// gnd    =  1- AGM1264F ground
// +5V    =  2- AGM1264F Vcc (with 0.1uF cap to ground)
// pot    =  3- AGM1264F Vo  (center pin of 10k pot)
// PE0    =  4- AGM1264F D/I (0 for command, 1 for data)
// gnd    =  5- AGM1264F R/W (blind cycle synchronization)
// PE1    =  6- AGM1264F E   (1 to latch in data/command)
// PB0    =  7- AGM1264F DB0
// PB1    =  8- AGM1264F DB1
// PB2    =  9- AGM1264F DB2
// PB3    = 10- AGM1264F DB3
// PB4    = 11- AGM1264F DB4
// PB5    = 12- AGM1264F DB5
// PB6    = 13- AGM1264F DB6
// PB7    = 14- AGM1264F DB7
// PE2    = 15- AGM1264F CS1 (controls left half of LCD)
// PE3    = 16- AGM1264F CS2 (controls right half of LCD)
// +5V    = 17- AGM1264F RES (reset)
// pot    = 18- ADM1264F Vee (-10V)
// NC     = 19- A
// NC     = 20- K
// 10k pot from pin 18 to ground, with center to pin 3
// references   http://www.azdisplays.com/prod/g1264f.php
// sample code  http://www.azdisplays.com/PDF/agm1264f_code.pdf
// data sheet   http://www.azdisplays.com/PDF/agm1264f.pdf

// Sparkfun LCD-00710      GDM12864H.pdf 
// HardwareADM12864H (tested):
// +5V    =  1- Vdd
// gnd    =  2- Vss
// pot    =  3- Vo
// PB0    =  4- DB0
// PB1    =  5- DB1
// PB2    =  6- DB2
// PB3    =  7- DB3
// PB4    =  8- DB4
// PB5    =  9- DB5
// PB6    = 10- DB6
// PB7    = 11- DB7
// PE2    = 12- CS2	 (control left side of LCD)
// PE3    = 13- CS1	 (control right side of LCD)
// +5V    = 14- /RES (reset)
// gnd    = 15- R/W (blind cycle synchronization)
// PE0    = 16- D/I (0 for command, 1 for data)
// PE1    = 17- E
// pot    = 18- Vee
// NC     = 19- A
// NC     = 20- K
// 10k pot from pin 18 to ground, with center to pin 3
// http://www.sparkfun.com/datasheets/LCD/GDM12864H.pdf

// BUG NOTICE 11/11/09 -Valvano
// When changing from right to left or from left to right
//   the first write with data=0 goes to two places
// One can reduce the effect of this bug by
// 1) Changing sides less often
// 2) Ignore autoincrement, and set column and page address each time
// 3) Blanking the screen then write 1's to the screen
// GoTo bug fixed on 11/20/09