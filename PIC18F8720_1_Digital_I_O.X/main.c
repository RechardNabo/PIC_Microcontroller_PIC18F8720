// PIC18F8720 Configuration Bit Settings
// 'C' source line config statements
// CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config OSCS = OFF       // Oscillator System Clock Switch Enable bit (Oscillator system clock switch option is disabled (main oscillator is source))

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = OFF        // Brown-out Reset Enable bit (Brown-out Reset disabled)
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

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <stdlib.h>
#include <xc.h>

#define TRUE 0x01
#define FALSE 0x00
#define _XTAL_FREQ 25000000

void PORT_A_DIGITALS(){
    //====================[Setup Bits]=====================
    //All PORT A PINS set as DIGITAl
    // ADC Configuration bits
    //e Low-Voltage Detect Control register
    
    ADCON1bits.PCFG0 = 0x01;
    ADCON1bits.PCFG1 = 0x01;
    ADCON1bits.PCFG2 = 0x01;
    ADCON1bits.PCFG3 = 0x01;
    ADCON1bits.VCFG0 = 0x00;
    ADCON1bits.VCFG1 = 0x00;
    
    LVDCONbits.LVDEN = 0x00;
    //====================[Configure the PINs ]===========================
    TRISAbits.TRISA0 = 0x00; //PIN set as OUTPUT

}

void PORT_B_DIGITALS(){
    //====================[Setup Bits]=====================
    //Interrupt operation registers
    //Capture/Compare/PWM - CCPx
    
    INTCONbits.RBIE = 0x00;
    INTCONbits.INT0E = 0x00;
    INTCONbits.TMR0IE = 0x00;
    INTCONbits.PEIE = 0x00;
    INTCONbits.GIEL = 0x00;
    INTCONbits.GIEH = 0x00;
    INTCONbits.GIE = 0x00;
    
    INTCON3bits.INT1E = 0x00;
    INTCON3bits.INT2E = 0x00;
    INTCON3bits.INT3E = 0x00;
    
    CCP2CONbits.CCP2M0 = 0x00;
    CCP2CONbits.CCP2M1 = 0x00;
    CCP2CONbits.CCP2M2 = 0x00;
    CCP2CONbits.CCP2M3 = 0x00;
    
    //=====================[Configure the Pins]=============
    TRISBbits.TRISB0 = 0x00;
}

void PORT_C_DIGITALS(){
    //  Capture/Compare/PWM - CCPx
    //  MSSP module is operated in SPI or I2C mode
    //  Timer 1 control register
    CCP1CONbits.CCP1M0 = 0x00;
    CCP1CONbits.CCP1M1 = 0x00;
    CCP1CONbits.CCP1M2 = 0x00;
    CCP1CONbits.CCP1M3 = 0x00;
    
    CCP2CONbits.CCP2M0 = 0x00;
    CCP2CONbits.CCP2M1 = 0x00;
    CCP2CONbits.CCP2M2 = 0x00;
    CCP2CONbits.CCP2M3 = 0x00;
    
    SSPCON1bits.SSPEN = 0x00;
    RCSTA1bits.SPEN = 0x00;
    RCSTA2bits.SPEN2 = 0x00;
    
    CCP2CONbits.CCP2M0 = 0x00;
    CCP2CONbits.CCP2M1 = 0x00;
    CCP2CONbits.CCP2M2 = 0x00;
    CCP2CONbits.CCP2M3 = 0x00;
    
    T1CONbits.T1OSCEN = 0x00;
    //=====================[Configure the Pins]=============
    
    TRISCbits.RC0 = 0x00;
}

void PORT_D_DIGITALS(){

    //====================[Setup Bits]=====================
    SSPCON1bits.SSPEN = 0x00;
    RCSTA1bits.SPEN = 0x00;
    RCSTA2bits.SPEN2 = 0x00;
    PSPCONbits.PSPMODE = 0x00;
    MEMCONbits.EBDIS = 0x00;
    
    //=====================[Configure the Pins]=============
    TRISDbits.TRISD0 = 0x00;

}

void PORT_E_DIGITALS(){
    //====================[Setup Bits]=====================
    MEMCONbits.EBDIS = 0x00;
    PSPCONbits.PSPMODE = 0x00;
    CCP2CONbits.CCP2M0 = 0x00;
    CCP2CONbits.CCP2M1 = 0x00;
    CCP2CONbits.CCP2M2 = 0x00;
    CCP2CONbits.CCP2M3 = 0x00;
    //=====================[Configure the Pins]=============
    TRISEbits.TRISE0 = 0x00;

}
void PORT_F_DIGITALS(){
    //====================[Setup Bits]=====================
    ADCON1bits.PCFG0 = 0x01;
    ADCON1bits.PCFG1 = 0x01;
    ADCON1bits.PCFG2 = 0x01;
    ADCON1bits.PCFG3 = 0x01;
    
    CVRCONbits.CVREN = 0x00;
    CVRCONbits.CVROE = 0x00;
    //=====================[Configure the Pins]=============
    TRISFbits.TRISF0 = 0x00;
}

void PORT_G_DIGITALS(){
    //====================[Setup Bits]=====================
    //  Capture/Compare/PWM - CCP3,4,5
    //  USART2 are multiplexed
    
    PIE3bits.CCP3IE = 0x00;
    PIE3bits.CCP4IE =0x00;
    PIE3bits.CCP5IE = 0x00;
    PIE3bits.TMR4IE = 0x00;
    PIE3bits.TX2IE = 0x00;
    PIE3bits.RC2IE = 0x00;
    //=====================[Configure the Pins]=============
    TRISGbits.TRISG0 = 0x00;
}

void PORT_H_DIGITALS(){
    //====================[Setup Bits]=====================
    //  ADC configuration bits
    //  External Memory Interface
    ADCON0bits.ADON = 0x00;
    ADCON1bits.PCFG0 = 0x00;
    ADCON1bits.PCFG1 = 0x00;
    ADCON1bits.PCFG2 = 0x00;
    ADCON1bits.PCFG3 = 0x00;
    ADCON1bits.VCFG0 = 0x00;
    ADCON1bits.VCFG1 = 0x00;
    
    MEMCONbits.EBDIS = 0x01;
    //=====================[Configure the Pins]=============
    TRISHbits.TRISH0 = 0x00;
}




void main(void) {
    TRISBbits.TRISB0 = 0x01;
    PORT_A_DIGITALS();
    //PORT_B_DIGITALS();
    PORT_C_DIGITALS();
    PORT_D_DIGITALS();
    PORT_E_DIGITALS();
    PORT_F_DIGITALS();
    PORT_G_DIGITALS();
    PORT_H_DIGITALS();
    while(TRUE){
        if(PORTBbits.RB0 == 0x00){
            PORTAbits.AN0 = 0x01;
            //PORTBbits.RB0 = 0x01;
            PORTCbits.RC0 = 0x01;
            PORTDbits.RD0 = 0x01;
            PORTEbits.RE0 = 0x01;
            PORTFbits.RF0 = 0x01;
            PORTGbits.RG0 = 0x01;
            PORTHbits.RH0 = 0x01;

            __delay_ms(1000);
        }
        PORTAbits.AN0 = 0x00;
        //PORTBbits.RB0 = 0x00;
        PORTCbits.RC0 = 0x00;
        PORTDbits.RD0 = 0x00;
        PORTEbits.RE0 = 0x00;
        PORTFbits.RF0 = 0x00;
        PORTGbits.RG0 = 0x00;
        PORTHbits.RH0 = 0x00;
        __delay_ms(100);
    }
    return;
}
