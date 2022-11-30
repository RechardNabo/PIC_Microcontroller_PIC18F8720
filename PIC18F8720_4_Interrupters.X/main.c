// PIC18F8720 Configuration Bit Settings
// 'C' source line config statements
// CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config OSCS = OFF       // Oscillator System Clock Switch Enable bit (Oscillator system clock switch option is disabled (main oscillator is source))

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = OFF         // Brown-out Reset Enable bit (Brown-out Reset enabled)
#pragma config BORV = 25        // Brown-out Reset Voltage bits (VBOR set to 2.5V)

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDTPS = 128      // Watchdog Timer Postscale Select bits (1:128)

// CONFIG3L
#pragma config MODE = MC        // Processor Mode Select bits (Microcontroller mode)
#pragma config WAIT = OFF       // External Bus Data Wait Enable bit (Wait selections unavailable for table reads and table writes)

// CONFIG3H
#pragma config CCP2MUX = OFF    // CCP2 Mux bit (CCP2 is multiplexed with RB3 in Extended Microcontroller, Microprocessor or Microprocessor with Boot Block mode. Or with RE7 in Microcontroller mode.)

// CONFIG4L
#pragma config STVR = OFF       // Stack Full/Underflow Reset Enable bit (Stack full/underflow will not cause Reset)
#pragma config LVP = OFF        // Low-Voltage ICSP Enable bit (Low-voltage ICSP disabled)

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000200-003FFFh) not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (004000-007FFFh) not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (008000-00BFFFh) not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (00C000-00FFFFh) not code-protected)
#pragma config CP4 = OFF        // Code Protection bit (Block 4 (010000-013FFFh) not code-protected)
#pragma config CP5 = OFF        // Code Protection bit (Block 5 (014000-017FFFh) not code-protected)
#pragma config CP6 = OFF        // Code Protection bit (Block 6 (018000-01BFFFh) not code-protected)
#pragma config CP7 = OFF        // Code Protection bit (Block 7 (01C000-01FFFFh) not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot Block (000000-0001FFh) not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000200-003FFFh) not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (004000-007FFFh) not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (008000-00BFFFh) not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (00C000-00FFFFh) not write-protected)
#pragma config WRT4 = OFF       // Write Protection bit (Block 4 (010000-013FFFh) not write-protected)
#pragma config WRT5 = OFF       // Write Protection bit (Block 5 (014000-017FFFh) not write-protected)
#pragma config WRT6 = OFF       // Write Protection bit (Block 6 (018000-01BFFFh) not write-protected)
#pragma config WRT7 = OFF       // Write Protection bit (Block 7 (01C000-01FFFFh) not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0001FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000200-003FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (004000-007FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks)
#pragma config EBTR4 = OFF      // Table Read Protection bit (Block 4 (010000-013FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR5 = OFF      // Table Read Protection bit (Block 5 (014000-017FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR6 = OFF      // Table Read Protection bit (Block 6 (018000-01BFFFh) not protected from table reads executed in other blocks)
#pragma config EBTR7 = OFF      // Table Read Protection bit (Block 7 (01C000-01FFFFh) not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0001FFh) not protected from table reads executed in other blocks)
#include <xc.h>
#include <stdio.h>

#include "LCD.h"
#define _XTAL_FREQ 0x12BFCE0
#define TRUE 0x01
#define FALSE 0x00



void Interrupt_init();
void Blink_LED();
void interrupt high_priority ISR_1(void);
/*void interrupt high_priority ISR_2(void);*/

void main(void) {
    
    TRISDbits.TRISD7 = 0x00;        //pin set as output interrupt output
    TRISDbits.TRISD6 = 0x00;
    TRISDbits.TRISD5 = 0x00;
    
    TRISDbits.TRISD0 = 0x00;        //pin set as input led 100ms
    TRISBbits.TRISB0 = 0x01;        //pin set as input interrupt input
    
    PORTDbits.RD7 = 0x00;
    PORTDbits.RD6 = 0x00;
    PORTDbits.RD5 = 0x00;
    
    Interrupt_init();
    LCD_SETUP_4BIT();
    LCD_INITIALIZE_4BIT();
    
    while (TRUE) {
        Blink_LED();
        LCD_20_LINE1();
        LCD_DISPLAY("PIC18 INTERRUPTERS");
    }
    return;
}

void Interrupt_init(){
    //==================[INT0]======================
    INTCON2bits.INTEDG0 = 0x00;
    INTCON2bits.nRBPU = 0x00;
    INTCONbits.GIE = 0x01;
    INTCONbits.PEIE = 0x01;
    INTCONbits.INT0E = 0x01;
    INTCONbits.INT0IF == 0x00;
    //==================[INT1]======================
    INTCON2bits.INTEDG1 = 0x00;
    INTCON3bits.INT1IE = 0x01;
    INTCON3bits.INT1IP = 0x01;
    INTCON3bits.INT1IF = 0x00;
    //==================[INT2]======================
    INTCON2bits.INTEDG2 = 0x00;
    INTCON3bits.INT2IE = 0x01;
    INTCON3bits.INT2IP = 0x00;
    INTCON3bits.INT3IF == 0x00;
    //==================[Priority Levels Configuration]==
    RCONbits.IPEN = 0x01;
    INTCONbits.GIEH = 0x01;
    INTCONbits.GIEL = 0x01;
    INTCON3bits.INT1IP = 0x00;
    
    
}

void interrupt high_priority ISR_1(void) {
    
    if(INTCONbits.INT0IF == 0x01 && INTCONbits.INT0IE == 0x01){
        LCD_20_LINE2();
        LCD_DISPLAY("INT0 Detected ");
        PORTDbits.RD7 = ~ (unsigned)PORTDbits.RD7;
        INTCONbits.INT0IF = 0x00;
    }
}

void interrupt low_priority ISR_2(void){
    
    if(INTCON3bits.INT1IF = 0x01 && INTCON3bits.INT1IE == 0x01){
        LCD_20_LINE3();
        LCD_DISPLAY("INT1 Detected ");
        PORTDbits.RD6 = ~ PORTDbits.RD6;
        INTCON3bits.INT1IF = 0x00;
    }
}


void Blink_LED(){
    PORTDbits.RD0 = 0x01;
    __delay_ms(100);
    PORTDbits.RD0 = 0x00;
    __delay_ms(100);
}