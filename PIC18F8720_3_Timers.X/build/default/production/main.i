
# 1 "main.c"


# 4
#pragma config OSC = HS
#pragma config OSCS = OFF


#pragma config PWRT = OFF
#pragma config BOR = OFF
#pragma config BORV = 25


#pragma config WDT = OFF
#pragma config WDTPS = 128


#pragma config MODE = MC
#pragma config WAIT = OFF


#pragma config CCP2MUX = OFF


#pragma config STVR = OFF
#pragma config LVP = OFF


#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF
#pragma config CP4 = OFF
#pragma config CP5 = OFF
#pragma config CP6 = OFF
#pragma config CP7 = OFF


#pragma config CPB = OFF
#pragma config CPD = OFF


#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF
#pragma config WRT4 = OFF
#pragma config WRT5 = OFF
#pragma config WRT6 = OFF
#pragma config WRT7 = OFF


#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF


#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF
#pragma config EBTR4 = OFF
#pragma config EBTR5 = OFF
#pragma config EBTR6 = OFF
#pragma config EBTR7 = OFF


#pragma config EBTRB = OFF

# 18 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 13 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;


# 7 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\pic\include\builtins.h"
#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __nonreentrant void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(uint8_t);

# 53 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\pic\include\proc\pic18f8720.h"
extern volatile unsigned char RCSTA2 __at(0xF6B);

asm("RCSTA2 equ 0F6Bh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :2;
unsigned ADEN :1;
unsigned :2;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D2 :1;
unsigned OERR2 :1;
unsigned FERR2 :1;
unsigned ADDEN2 :1;
unsigned CREN2 :1;
unsigned SREN2 :1;
unsigned RX92 :1;
unsigned SPEN2 :1;
};
struct {
unsigned RCD82 :1;
unsigned :5;
unsigned RC8_92 :1;
};
struct {
unsigned :6;
unsigned RC92 :1;
};
} RCSTA2bits_t;
extern volatile RCSTA2bits_t RCSTA2bits __at(0xF6B);

# 238
extern volatile unsigned char TXSTA2 __at(0xF6C);

asm("TXSTA2 equ 0F6Ch");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D2 :1;
unsigned TRMT2 :1;
unsigned BRGH2 :1;
unsigned SENDB2 :1;
unsigned SYNC2 :1;
unsigned TXEN2 :1;
unsigned TX92 :1;
unsigned CSRC2 :1;
};
struct {
unsigned TXD82 :1;
unsigned :5;
unsigned TX8_92 :1;
};
} TXSTA2bits_t;
extern volatile TXSTA2bits_t TXSTA2bits __at(0xF6C);

# 393
extern volatile unsigned char TXREG2 __at(0xF6D);

asm("TXREG2 equ 0F6Dh");




extern volatile unsigned char RCREG2 __at(0xF6E);

asm("RCREG2 equ 0F6Eh");




extern volatile unsigned char SPBRG2 __at(0xF6F);

asm("SPBRG2 equ 0F6Fh");




extern volatile unsigned char CCP5CON __at(0xF70);

asm("CCP5CON equ 0F70h");


typedef union {
struct {
unsigned CCP5M :4;
unsigned DC5B :2;
};
struct {
unsigned CCP5M0 :1;
unsigned CCP5M1 :1;
unsigned CCP5M2 :1;
unsigned CCP5M3 :1;
unsigned DC5B0 :1;
unsigned DC5B1 :1;
};
struct {
unsigned :4;
unsigned DCCP5Y :1;
unsigned DCCP5X :1;
};
} CCP5CONbits_t;
extern volatile CCP5CONbits_t CCP5CONbits __at(0xF70);

# 493
extern volatile unsigned short CCPR5 __at(0xF71);

asm("CCPR5 equ 0F71h");




extern volatile unsigned char CCPR5L __at(0xF71);

asm("CCPR5L equ 0F71h");




extern volatile unsigned char CCPR5H __at(0xF72);

asm("CCPR5H equ 0F72h");




extern volatile unsigned char CCP4CON __at(0xF73);

asm("CCP4CON equ 0F73h");


typedef union {
struct {
unsigned CCP4M :4;
unsigned DC4B :2;
};
struct {
unsigned CCP4M0 :1;
unsigned CCP4M1 :1;
unsigned CCP4M2 :1;
unsigned CCP4M3 :1;
unsigned DC4B0 :1;
unsigned DC4B1 :1;
};
struct {
unsigned :4;
unsigned DCCP4Y :1;
unsigned DCCP4X :1;
};
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __at(0xF73);

# 593
extern volatile unsigned short CCPR4 __at(0xF74);

asm("CCPR4 equ 0F74h");




extern volatile unsigned char CCPR4L __at(0xF74);

asm("CCPR4L equ 0F74h");




extern volatile unsigned char CCPR4H __at(0xF75);

asm("CCPR4H equ 0F75h");




extern volatile unsigned char T4CON __at(0xF76);

asm("T4CON equ 0F76h");


typedef union {
struct {
unsigned T4CKPS :2;
unsigned TMR4ON :1;
unsigned T4OUTPS :4;
};
struct {
unsigned T4CKPS0 :1;
unsigned T4CKPS1 :1;
unsigned :1;
unsigned T4OUTPS0 :1;
unsigned T4OUTPS1 :1;
unsigned T4OUTPS2 :1;
unsigned T4OUTPS3 :1;
};
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __at(0xF76);

# 685
extern volatile unsigned char PR4 __at(0xF77);

asm("PR4 equ 0F77h");




extern volatile unsigned char TMR4 __at(0xF78);

asm("TMR4 equ 0F78h");




extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned AN2 :1;
unsigned AN3 :1;
unsigned T0CKI :1;
unsigned AN4 :1;
unsigned OSC2 :1;
};
struct {
unsigned :2;
unsigned VREFM :1;
unsigned VREFP :1;
unsigned :1;
unsigned LVDIN :1;
unsigned CLKO :1;
};
struct {
unsigned ULPWUIN :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 835
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned INT0 :1;
unsigned INT1 :1;
unsigned INT2 :1;
unsigned INT3 :1;
unsigned KBI0 :1;
unsigned KBI1 :1;
unsigned KBI2 :1;
unsigned KBI3 :1;
};
struct {
unsigned :3;
unsigned CCP2 :1;
unsigned :1;
unsigned PGM :1;
unsigned PGC :1;
unsigned PGD :1;
};
struct {
unsigned :3;
unsigned CCP2A :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 993
extern volatile unsigned char PORTC __at(0xF82);

asm("PORTC equ 0F82h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
struct {
unsigned T1OSO :1;
unsigned T1OSI :1;
unsigned CCP1 :1;
unsigned SCK :1;
unsigned SDI :1;
unsigned SDO :1;
unsigned TX :1;
unsigned RX :1;
};
struct {
unsigned T13CKI :1;
unsigned CCP2 :1;
unsigned :1;
unsigned SCL :1;
unsigned SDA :1;
unsigned :1;
unsigned CK :1;
unsigned DT :1;
};
struct {
unsigned :1;
unsigned CCP2A :1;
};
struct {
unsigned :1;
unsigned PA2 :1;
unsigned PA1 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0xF82);

# 1169
extern volatile unsigned char PORTD __at(0xF83);

asm("PORTD equ 0F83h");


typedef union {
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
struct {
unsigned PSP0 :1;
unsigned PSP1 :1;
unsigned PSP2 :1;
unsigned PSP3 :1;
unsigned PSP4 :1;
unsigned PSP5 :1;
unsigned PSP6 :1;
unsigned PSP7 :1;
};
struct {
unsigned AD0 :1;
unsigned AD1 :1;
unsigned AD2 :1;
unsigned AD3 :1;
unsigned AD4 :1;
unsigned AD5 :1;
unsigned AD6 :1;
unsigned AD7 :1;
};
struct {
unsigned AD00 :1;
unsigned AD01 :1;
unsigned AD02 :1;
unsigned AD03 :1;
unsigned AD04 :1;
unsigned AD05 :1;
unsigned AD06 :1;
unsigned AD07 :1;
};
struct {
unsigned :7;
unsigned SS2 :1;
};
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __at(0xF83);

# 1390
extern volatile unsigned char PORTE __at(0xF84);

asm("PORTE equ 0F84h");


typedef union {
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
unsigned RE4 :1;
unsigned RE5 :1;
unsigned RE6 :1;
unsigned RE7 :1;
};
struct {
unsigned RD :1;
unsigned WR :1;
unsigned CS :1;
unsigned :4;
unsigned CCP2 :1;
};
struct {
unsigned AD8 :1;
unsigned AD9 :1;
unsigned AD10 :1;
unsigned AD11 :1;
unsigned AD12 :1;
unsigned AD13 :1;
unsigned AD14 :1;
unsigned AD15 :1;
};
struct {
unsigned AD08 :1;
unsigned AD09 :1;
unsigned :5;
unsigned CCP2C :1;
};
struct {
unsigned PD2 :1;
unsigned PC2 :1;
unsigned CCP10 :1;
unsigned CCP9E :1;
unsigned CCP8E :1;
unsigned CCP7E :1;
unsigned CCP6E :1;
unsigned CCP2E :1;
};
struct {
unsigned RDE :1;
unsigned WRE :1;
unsigned PB2 :1;
unsigned PC3E :1;
unsigned PB3E :1;
unsigned PC1E :1;
unsigned PB1E :1;
unsigned PA2E :1;
};
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __at(0xF84);

# 1650
extern volatile unsigned char PORTF __at(0xF85);

asm("PORTF equ 0F85h");


typedef union {
struct {
unsigned RF0 :1;
unsigned RF1 :1;
unsigned RF2 :1;
unsigned RF3 :1;
unsigned RF4 :1;
unsigned RF5 :1;
unsigned RF6 :1;
unsigned RF7 :1;
};
struct {
unsigned AN5 :1;
unsigned AN6 :1;
unsigned AN7 :1;
unsigned AN8 :1;
unsigned AN9 :1;
unsigned AN10 :1;
unsigned AN11 :1;
unsigned SS :1;
};
struct {
unsigned :1;
unsigned C2OUT :1;
unsigned C1OUT :1;
unsigned :2;
unsigned CVREF :1;
};
struct {
unsigned :1;
unsigned C2OUTF :1;
unsigned C1OUTF :1;
};
} PORTFbits_t;
extern volatile PORTFbits_t PORTFbits __at(0xF85);

# 1799
extern volatile unsigned char PORTG __at(0xF86);

asm("PORTG equ 0F86h");


typedef union {
struct {
unsigned RG0 :1;
unsigned RG1 :1;
unsigned RG2 :1;
unsigned RG3 :1;
unsigned RG4 :1;
};
struct {
unsigned CCP3 :1;
unsigned TX2 :1;
unsigned RX2 :1;
unsigned CCP4 :1;
unsigned CCP5 :1;
};
struct {
unsigned :1;
unsigned CK2 :1;
unsigned DT2 :1;
};
struct {
unsigned :1;
unsigned C3OUTG :1;
};
} PORTGbits_t;
extern volatile PORTGbits_t PORTGbits __at(0xF86);

# 1899
extern volatile unsigned char PORTH __at(0xF87);

asm("PORTH equ 0F87h");


typedef union {
struct {
unsigned RH0 :1;
unsigned RH1 :1;
unsigned RH2 :1;
unsigned RH3 :1;
unsigned RH4 :1;
unsigned RH5 :1;
unsigned RH6 :1;
unsigned RH7 :1;
};
struct {
unsigned A16 :1;
unsigned A17 :1;
unsigned A18 :1;
unsigned A19 :1;
unsigned AN12 :1;
unsigned AN13 :1;
unsigned AN14 :1;
unsigned AN15 :1;
};
struct {
unsigned AD16 :1;
unsigned AD17 :1;
unsigned AD18 :1;
unsigned AD19 :1;
};
struct {
unsigned :4;
unsigned CCP9 :1;
unsigned CCP8 :1;
unsigned CCP7 :1;
unsigned CCP6 :1;
};
struct {
unsigned :4;
unsigned PC3 :1;
unsigned PB3 :1;
unsigned PC1 :1;
unsigned PB1 :1;
};
} PORTHbits_t;
extern volatile PORTHbits_t PORTHbits __at(0xF87);

# 2091
extern volatile unsigned char PORTJ __at(0xF88);

asm("PORTJ equ 0F88h");


typedef union {
struct {
unsigned RJ0 :1;
unsigned RJ1 :1;
unsigned RJ2 :1;
unsigned RJ3 :1;
unsigned RJ4 :1;
unsigned RJ5 :1;
unsigned RJ6 :1;
unsigned RJ7 :1;
};
struct {
unsigned ALE :1;
unsigned OE :1;
unsigned WRL :1;
unsigned WRH :1;
unsigned BA0 :1;
unsigned CE :1;
unsigned LB :1;
unsigned UB :1;
};
} PORTJbits_t;
extern volatile PORTJbits_t PORTJbits __at(0xF88);

# 2203
extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned LA4 :1;
unsigned LA5 :1;
unsigned LA6 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 2303
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 2415
extern volatile unsigned char LATC __at(0xF8B);

asm("LATC equ 0F8Bh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
struct {
unsigned LC0 :1;
unsigned LC1 :1;
unsigned LC2 :1;
unsigned LC3 :1;
unsigned LC4 :1;
unsigned LC5 :1;
unsigned LC6 :1;
unsigned LC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0xF8B);

# 2527
extern volatile unsigned char LATD __at(0xF8C);

asm("LATD equ 0F8Ch");


typedef union {
struct {
unsigned LATD0 :1;
unsigned LATD1 :1;
unsigned LATD2 :1;
unsigned LATD3 :1;
unsigned LATD4 :1;
unsigned LATD5 :1;
unsigned LATD6 :1;
unsigned LATD7 :1;
};
struct {
unsigned LD0 :1;
unsigned LD1 :1;
unsigned LD2 :1;
unsigned LD3 :1;
unsigned LD4 :1;
unsigned LD5 :1;
unsigned LD6 :1;
unsigned LD7 :1;
};
} LATDbits_t;
extern volatile LATDbits_t LATDbits __at(0xF8C);

# 2639
extern volatile unsigned char LATE __at(0xF8D);

asm("LATE equ 0F8Dh");


typedef union {
struct {
unsigned LATE0 :1;
unsigned LATE1 :1;
unsigned LATE2 :1;
unsigned LATE3 :1;
unsigned LATE4 :1;
unsigned LATE5 :1;
unsigned LATE6 :1;
unsigned LATE7 :1;
};
struct {
unsigned LE0 :1;
unsigned LE1 :1;
unsigned LE2 :1;
unsigned LE3 :1;
unsigned LE4 :1;
unsigned LE5 :1;
unsigned LE6 :1;
unsigned LE7 :1;
};
} LATEbits_t;
extern volatile LATEbits_t LATEbits __at(0xF8D);

# 2751
extern volatile unsigned char LATF __at(0xF8E);

asm("LATF equ 0F8Eh");


typedef union {
struct {
unsigned LATF0 :1;
unsigned LATF1 :1;
unsigned LATF2 :1;
unsigned LATF3 :1;
unsigned LATF4 :1;
unsigned LATF5 :1;
unsigned LATF6 :1;
unsigned LATF7 :1;
};
struct {
unsigned LF0 :1;
unsigned LF1 :1;
unsigned LF2 :1;
unsigned LF3 :1;
unsigned LF4 :1;
unsigned LF5 :1;
unsigned LF6 :1;
unsigned LF7 :1;
};
} LATFbits_t;
extern volatile LATFbits_t LATFbits __at(0xF8E);

# 2863
extern volatile unsigned char LATG __at(0xF8F);

asm("LATG equ 0F8Fh");


typedef union {
struct {
unsigned LATG0 :1;
unsigned LATG1 :1;
unsigned LATG2 :1;
unsigned LATG3 :1;
unsigned LATG4 :1;
};
struct {
unsigned LG0 :1;
unsigned LG1 :1;
unsigned LG2 :1;
unsigned LG3 :1;
unsigned LG4 :1;
};
} LATGbits_t;
extern volatile LATGbits_t LATGbits __at(0xF8F);

# 2939
extern volatile unsigned char LATH __at(0xF90);

asm("LATH equ 0F90h");


typedef union {
struct {
unsigned LATH0 :1;
unsigned LATH1 :1;
unsigned LATH2 :1;
unsigned LATH3 :1;
unsigned LATH4 :1;
unsigned LATH5 :1;
unsigned LATH6 :1;
unsigned LATH7 :1;
};
struct {
unsigned LH0 :1;
unsigned LH1 :1;
unsigned LH2 :1;
unsigned LH3 :1;
unsigned LH4 :1;
unsigned LH5 :1;
unsigned LH6 :1;
unsigned LH7 :1;
};
} LATHbits_t;
extern volatile LATHbits_t LATHbits __at(0xF90);

# 3051
extern volatile unsigned char LATJ __at(0xF91);

asm("LATJ equ 0F91h");


typedef union {
struct {
unsigned LATJ0 :1;
unsigned LATJ1 :1;
unsigned LATJ2 :1;
unsigned LATJ3 :1;
unsigned LATJ4 :1;
unsigned LATJ5 :1;
unsigned LATJ6 :1;
unsigned LATJ7 :1;
};
struct {
unsigned LJ0 :1;
unsigned LJ1 :1;
unsigned LJ2 :1;
unsigned LJ3 :1;
unsigned LJ4 :1;
unsigned LJ5 :1;
unsigned LJ6 :1;
unsigned LJ7 :1;
};
} LATJbits_t;
extern volatile LATJbits_t LATJbits __at(0xF91);

# 3163
extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __at(0xF92);

asm("DDRA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 3266
typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
};
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __at(0xF92);

# 3361
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __at(0xF93);

asm("DDRB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 3476
typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __at(0xF93);

# 3583
extern volatile unsigned char TRISC __at(0xF94);

asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __at(0xF94);

asm("DDRC equ 0F94h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0xF94);

# 3698
typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __at(0xF94);

# 3805
extern volatile unsigned char TRISD __at(0xF95);

asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __at(0xF95);

asm("DDRD equ 0F95h");


typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __at(0xF95);

# 3920
typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __at(0xF95);

# 4027
extern volatile unsigned char TRISE __at(0xF96);

asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __at(0xF96);

asm("DDRE equ 0F96h");


typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
unsigned TRISE3 :1;
unsigned TRISE4 :1;
unsigned TRISE5 :1;
unsigned TRISE6 :1;
unsigned TRISE7 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
unsigned RE4 :1;
unsigned RE5 :1;
unsigned RE6 :1;
unsigned RE7 :1;
};
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __at(0xF96);

# 4142
typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
unsigned TRISE3 :1;
unsigned TRISE4 :1;
unsigned TRISE5 :1;
unsigned TRISE6 :1;
unsigned TRISE7 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
unsigned RE4 :1;
unsigned RE5 :1;
unsigned RE6 :1;
unsigned RE7 :1;
};
} DDREbits_t;
extern volatile DDREbits_t DDREbits __at(0xF96);

# 4249
extern volatile unsigned char TRISF __at(0xF97);

asm("TRISF equ 0F97h");


extern volatile unsigned char DDRF __at(0xF97);

asm("DDRF equ 0F97h");


typedef union {
struct {
unsigned TRISF0 :1;
unsigned TRISF1 :1;
unsigned TRISF2 :1;
unsigned TRISF3 :1;
unsigned TRISF4 :1;
unsigned TRISF5 :1;
unsigned TRISF6 :1;
unsigned TRISF7 :1;
};
struct {
unsigned RF0 :1;
unsigned RF1 :1;
unsigned RF2 :1;
unsigned RF3 :1;
unsigned RF4 :1;
unsigned RF5 :1;
unsigned RF6 :1;
unsigned RF7 :1;
};
} TRISFbits_t;
extern volatile TRISFbits_t TRISFbits __at(0xF97);

# 4364
typedef union {
struct {
unsigned TRISF0 :1;
unsigned TRISF1 :1;
unsigned TRISF2 :1;
unsigned TRISF3 :1;
unsigned TRISF4 :1;
unsigned TRISF5 :1;
unsigned TRISF6 :1;
unsigned TRISF7 :1;
};
struct {
unsigned RF0 :1;
unsigned RF1 :1;
unsigned RF2 :1;
unsigned RF3 :1;
unsigned RF4 :1;
unsigned RF5 :1;
unsigned RF6 :1;
unsigned RF7 :1;
};
} DDRFbits_t;
extern volatile DDRFbits_t DDRFbits __at(0xF97);

# 4471
extern volatile unsigned char TRISG __at(0xF98);

asm("TRISG equ 0F98h");


extern volatile unsigned char DDRG __at(0xF98);

asm("DDRG equ 0F98h");


typedef union {
struct {
unsigned TRISG0 :1;
unsigned TRISG1 :1;
unsigned TRISG2 :1;
unsigned TRISG3 :1;
unsigned TRISG4 :1;
};
struct {
unsigned RG0 :1;
unsigned RG1 :1;
unsigned RG2 :1;
unsigned RG3 :1;
unsigned RG4 :1;
};
} TRISGbits_t;
extern volatile TRISGbits_t TRISGbits __at(0xF98);

# 4550
typedef union {
struct {
unsigned TRISG0 :1;
unsigned TRISG1 :1;
unsigned TRISG2 :1;
unsigned TRISG3 :1;
unsigned TRISG4 :1;
};
struct {
unsigned RG0 :1;
unsigned RG1 :1;
unsigned RG2 :1;
unsigned RG3 :1;
unsigned RG4 :1;
};
} DDRGbits_t;
extern volatile DDRGbits_t DDRGbits __at(0xF98);

# 4621
extern volatile unsigned char TRISH __at(0xF99);

asm("TRISH equ 0F99h");


extern volatile unsigned char DDRH __at(0xF99);

asm("DDRH equ 0F99h");


typedef union {
struct {
unsigned TRISH0 :1;
unsigned TRISH1 :1;
unsigned TRISH2 :1;
unsigned TRISH3 :1;
unsigned TRISH4 :1;
unsigned TRISH5 :1;
unsigned TRISH6 :1;
unsigned TRISH7 :1;
};
struct {
unsigned RH0 :1;
unsigned RH1 :1;
unsigned RH2 :1;
unsigned RH3 :1;
unsigned RH4 :1;
unsigned RH5 :1;
unsigned RH6 :1;
unsigned RH7 :1;
};
} TRISHbits_t;
extern volatile TRISHbits_t TRISHbits __at(0xF99);

# 4736
typedef union {
struct {
unsigned TRISH0 :1;
unsigned TRISH1 :1;
unsigned TRISH2 :1;
unsigned TRISH3 :1;
unsigned TRISH4 :1;
unsigned TRISH5 :1;
unsigned TRISH6 :1;
unsigned TRISH7 :1;
};
struct {
unsigned RH0 :1;
unsigned RH1 :1;
unsigned RH2 :1;
unsigned RH3 :1;
unsigned RH4 :1;
unsigned RH5 :1;
unsigned RH6 :1;
unsigned RH7 :1;
};
} DDRHbits_t;
extern volatile DDRHbits_t DDRHbits __at(0xF99);

# 4843
extern volatile unsigned char TRISJ __at(0xF9A);

asm("TRISJ equ 0F9Ah");


extern volatile unsigned char DDRJ __at(0xF9A);

asm("DDRJ equ 0F9Ah");


typedef union {
struct {
unsigned TRISJ0 :1;
unsigned TRISJ1 :1;
unsigned TRISJ2 :1;
unsigned TRISJ3 :1;
unsigned TRISJ4 :1;
unsigned TRISJ5 :1;
unsigned TRISJ6 :1;
unsigned TRISJ7 :1;
};
struct {
unsigned RJ0 :1;
unsigned RJ1 :1;
unsigned RJ2 :1;
unsigned RJ3 :1;
unsigned RJ4 :1;
unsigned RJ5 :1;
unsigned RJ6 :1;
unsigned RJ7 :1;
};
} TRISJbits_t;
extern volatile TRISJbits_t TRISJbits __at(0xF9A);

# 4958
typedef union {
struct {
unsigned TRISJ0 :1;
unsigned TRISJ1 :1;
unsigned TRISJ2 :1;
unsigned TRISJ3 :1;
unsigned TRISJ4 :1;
unsigned TRISJ5 :1;
unsigned TRISJ6 :1;
unsigned TRISJ7 :1;
};
struct {
unsigned RJ0 :1;
unsigned RJ1 :1;
unsigned RJ2 :1;
unsigned RJ3 :1;
unsigned RJ4 :1;
unsigned RJ5 :1;
unsigned RJ6 :1;
unsigned RJ7 :1;
};
} DDRJbits_t;
extern volatile DDRJbits_t DDRJbits __at(0xF9A);

# 5065
extern volatile unsigned char MEMCON __at(0xF9C);

asm("MEMCON equ 0F9Ch");


typedef union {
struct {
unsigned WM :2;
unsigned :2;
unsigned WAIT :2;
unsigned :1;
unsigned EBDIS :1;
};
struct {
unsigned WM0 :1;
unsigned WM1 :1;
unsigned :2;
unsigned WAIT0 :1;
unsigned WAIT1 :1;
};
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __at(0xF9C);

# 5126
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSPIE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
unsigned PSPIE :1;
};
struct {
unsigned :4;
unsigned TX1IE :1;
unsigned RC1IE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 5203
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSPIF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
unsigned PSPIF :1;
};
struct {
unsigned :4;
unsigned TX1IF :1;
unsigned RC1IF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 5280
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned TMR2IP :1;
unsigned CCP1IP :1;
unsigned SSPIP :1;
unsigned TXIP :1;
unsigned RCIP :1;
unsigned ADIP :1;
unsigned PSPIP :1;
};
struct {
unsigned :4;
unsigned TX1IP :1;
unsigned RC1IP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 5357
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned TMR3IE :1;
unsigned LVDIE :1;
unsigned BCLIE :1;
unsigned EEIE :1;
unsigned :1;
unsigned CMIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 5408
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned TMR3IF :1;
unsigned LVDIF :1;
unsigned BCLIF :1;
unsigned EEIF :1;
unsigned :1;
unsigned CMIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 5459
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned CCP2IP :1;
unsigned TMR3IP :1;
unsigned LVDIP :1;
unsigned BCLIP :1;
unsigned EEIP :1;
unsigned :1;
unsigned CMIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 5510
extern volatile unsigned char PIE3 __at(0xFA3);

asm("PIE3 equ 0FA3h");


typedef union {
struct {
unsigned CCP3IE :1;
unsigned CCP4IE :1;
unsigned CCP5IE :1;
unsigned TMR4IE :1;
unsigned TX2IE :1;
unsigned RC2IE :1;
};
struct {
unsigned RXB0IE :1;
unsigned RXB1IE :1;
unsigned TXB0IE :1;
unsigned TXB1IE :1;
unsigned TXB2IE :1;
};
struct {
unsigned :1;
unsigned RXBNIE :1;
unsigned :2;
unsigned TXBNIE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0xFA3);

# 5608
extern volatile unsigned char PIR3 __at(0xFA4);

asm("PIR3 equ 0FA4h");


typedef union {
struct {
unsigned CCP3IF :1;
unsigned CCP4IF :1;
unsigned CCP5IF :1;
unsigned TMR4IF :1;
unsigned TX2IF :1;
unsigned RC2IF :1;
};
struct {
unsigned :1;
unsigned RXBNIF :1;
unsigned :2;
unsigned TXBNIF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0xFA4);

# 5674
extern volatile unsigned char IPR3 __at(0xFA5);

asm("IPR3 equ 0FA5h");


typedef union {
struct {
unsigned CCP3IP :1;
unsigned CCP4IP :1;
unsigned CCP5IP :1;
unsigned TMR4IP :1;
unsigned TX2IP :1;
unsigned RC2IP :1;
};
struct {
unsigned :1;
unsigned RXBNIP :1;
unsigned :2;
unsigned TXBNIP :1;
};
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __at(0xFA5);

# 5740
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned :1;
unsigned CFGS :1;
unsigned EEPGD :1;
};
struct {
unsigned :6;
unsigned EEFS :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 5806
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __at(0xFA8);

asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __at(0xFA9);

asm("EEADR equ 0FA9h");




extern volatile unsigned char EEADRH __at(0xFAA);

asm("EEADRH equ 0FAAh");




extern volatile unsigned char RCSTA1 __at(0xFAB);

asm("RCSTA1 equ 0FABh");


extern volatile unsigned char RCSTA __at(0xFAB);

asm("RCSTA equ 0FABh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :2;
unsigned ADEN :1;
unsigned :2;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D1 :1;
unsigned OERR1 :1;
unsigned FERR1 :1;
unsigned ADDEN1 :1;
unsigned CREN1 :1;
unsigned SREN1 :1;
unsigned RX91 :1;
unsigned SPEN1 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAB);

# 6007
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :2;
unsigned ADEN :1;
unsigned :2;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D1 :1;
unsigned OERR1 :1;
unsigned FERR1 :1;
unsigned ADDEN1 :1;
unsigned CREN1 :1;
unsigned SREN1 :1;
unsigned RX91 :1;
unsigned SPEN1 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAB);

# 6172
extern volatile unsigned char TXSTA1 __at(0xFAC);

asm("TXSTA1 equ 0FACh");


extern volatile unsigned char TXSTA __at(0xFAC);

asm("TXSTA equ 0FACh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :3;
unsigned SENDB :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAC);

# 6326
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :3;
unsigned SENDB :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAC);

# 6472
extern volatile unsigned char TXREG1 __at(0xFAD);

asm("TXREG1 equ 0FADh");


extern volatile unsigned char TXREG __at(0xFAD);

asm("TXREG equ 0FADh");




extern volatile unsigned char RCREG1 __at(0xFAE);

asm("RCREG1 equ 0FAEh");


extern volatile unsigned char RCREG __at(0xFAE);

asm("RCREG equ 0FAEh");




extern volatile unsigned char SPBRG1 __at(0xFAF);

asm("SPBRG1 equ 0FAFh");


extern volatile unsigned char SPBRG __at(0xFAF);

asm("SPBRG equ 0FAFh");




extern volatile unsigned char PSPCON __at(0xFB0);

asm("PSPCON equ 0FB0h");


typedef union {
struct {
unsigned :4;
unsigned PSPMODE :1;
unsigned IBOV :1;
unsigned OBF :1;
unsigned IBF :1;
};
} PSPCONbits_t;
extern volatile PSPCONbits_t PSPCONbits __at(0xFB0);

# 6547
extern volatile unsigned char T3CON __at(0xFB1);

asm("T3CON equ 0FB1h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T3SYNC :1;
};
struct {
unsigned TMR3ON :1;
unsigned TMR3CS :1;
unsigned nT3SYNC :1;
unsigned T3CCP1 :1;
unsigned T3CKPS :2;
unsigned T3CCP2 :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T3SYNC :1;
unsigned :1;
unsigned T3CKPS0 :1;
unsigned T3CKPS1 :1;
};
struct {
unsigned :2;
unsigned T3INSYNC :1;
};
struct {
unsigned :2;
unsigned T3NSYNC :1;
};
struct {
unsigned :3;
unsigned SOSCEN3 :1;
unsigned :3;
unsigned RD163 :1;
};
struct {
unsigned :7;
unsigned T3RD16 :1;
};
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __at(0xFB1);

# 6677
extern volatile unsigned short TMR3 __at(0xFB2);

asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __at(0xFB2);

asm("TMR3L equ 0FB2h");




extern volatile unsigned char TMR3H __at(0xFB3);

asm("TMR3H equ 0FB3h");




extern volatile unsigned char CMCON __at(0xFB4);

asm("CMCON equ 0FB4h");


typedef union {
struct {
unsigned CM :3;
unsigned CIS :1;
unsigned C1INV :1;
unsigned C2INV :1;
unsigned C1OUT :1;
unsigned C2OUT :1;
};
struct {
unsigned CM0 :1;
unsigned CM1 :1;
unsigned CM2 :1;
};
struct {
unsigned CMEN0 :1;
unsigned CMEN1 :1;
unsigned CMEN2 :1;
};
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __at(0xFB4);

# 6788
extern volatile unsigned char CVRCON __at(0xFB5);

asm("CVRCON equ 0FB5h");


typedef union {
struct {
unsigned CVR :4;
unsigned CVRSS :1;
unsigned CVRR :1;
unsigned CVROE :1;
unsigned CVREN :1;
};
struct {
unsigned CVR0 :1;
unsigned CVR1 :1;
unsigned CVR2 :1;
unsigned CVR3 :1;
unsigned CVREF :1;
};
struct {
unsigned :6;
unsigned CVROEN :1;
};
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __at(0xFB5);

# 6873
extern volatile unsigned char CCP3CON __at(0xFB7);

asm("CCP3CON equ 0FB7h");


typedef union {
struct {
unsigned CCP3M :4;
unsigned DC3B :2;
};
struct {
unsigned CCP3M0 :1;
unsigned CCP3M1 :1;
unsigned CCP3M2 :1;
unsigned CCP3M3 :1;
unsigned DC3B0 :1;
unsigned DC3B1 :1;
};
struct {
unsigned :4;
unsigned DCCP3Y :1;
unsigned DCCP3X :1;
};
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __at(0xFB7);

# 6952
extern volatile unsigned short CCPR3 __at(0xFB8);

asm("CCPR3 equ 0FB8h");




extern volatile unsigned char CCPR3L __at(0xFB8);

asm("CCPR3L equ 0FB8h");




extern volatile unsigned char CCPR3H __at(0xFB9);

asm("CCPR3H equ 0FB9h");




extern volatile unsigned char CCP2CON __at(0xFBA);

asm("CCP2CON equ 0FBAh");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
struct {
unsigned :4;
unsigned DCCP2Y :1;
unsigned DCCP2X :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0xFBA);

# 7067
extern volatile unsigned short CCPR2 __at(0xFBB);

asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __at(0xFBB);

asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __at(0xFBC);

asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __at(0xFBD);

asm("CCP1CON equ 0FBDh");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
struct {
unsigned :4;
unsigned DCCP1Y :1;
unsigned DCCP1X :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0xFBD);

# 7182
extern volatile unsigned short CCPR1 __at(0xFBE);

asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __at(0xFBE);

asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __at(0xFBF);

asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __at(0xFC0);

asm("ADCON2 equ 0FC0h");


typedef union {
struct {
unsigned ADCS :3;
unsigned :4;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0xFC0);

# 7250
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned PCFG :4;
unsigned VCFG :2;
};
struct {
unsigned PCFG0 :1;
unsigned PCFG1 :1;
unsigned PCFG2 :1;
unsigned PCFG3 :1;
unsigned VCFG0 :1;
unsigned VCFG1 :1;
};
struct {
unsigned :3;
unsigned CHSN3 :1;
unsigned VCFG01 :1;
unsigned VCFG11 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 7335
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :4;
};
struct {
unsigned :1;
unsigned DONE :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 7454
extern volatile unsigned short ADRES __at(0xFC3);

asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON2 __at(0xFC5);

asm("SSPCON2 equ 0FC5h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0xFC5);

# 7537
extern volatile unsigned char SSPCON1 __at(0xFC6);

asm("SSPCON1 equ 0FC6h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0xFC6);

# 7607
extern volatile unsigned char SSPSTAT __at(0xFC7);

asm("SSPSTAT equ 0FC7h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned :2;
unsigned RW :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
unsigned :2;
unsigned NOT_A :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0xFC7);

# 7855
extern volatile unsigned char SSPADD __at(0xFC8);

asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __at(0xFC9);

asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __at(0xFCA);

asm("T2CON equ 0FCAh");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned T2OUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0xFCA);

# 7940
extern volatile unsigned char PR2 __at(0xFCB);

asm("PR2 equ 0FCBh");




extern volatile unsigned char TMR2 __at(0xFCC);

asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T1SYNC :1;
unsigned :1;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
struct {
unsigned :2;
unsigned T1INSYNC :1;
};
struct {
unsigned :3;
unsigned SOSCEN :1;
unsigned :3;
unsigned T1RD16 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 8061
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned :2;
unsigned IPEN :1;
};
struct {
unsigned :7;
unsigned NOT_IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
unsigned :2;
unsigned nIPEN :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 8225
extern volatile unsigned char WDTCON __at(0xFD1);

asm("WDTCON equ 0FD1h");


typedef union {
struct {
unsigned SWDTEN :1;
};
struct {
unsigned SWDTE :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFD1);

# 8253
extern volatile unsigned char LVDCON __at(0xFD2);

asm("LVDCON equ 0FD2h");


typedef union {
struct {
unsigned LVDL :4;
unsigned LVDEN :1;
unsigned IRVST :1;
};
struct {
unsigned LVDL0 :1;
unsigned LVDL1 :1;
unsigned LVDL2 :1;
unsigned LVDL3 :1;
};
struct {
unsigned LVV0 :1;
unsigned LVV1 :1;
unsigned LVV2 :1;
unsigned LVV3 :1;
unsigned :1;
unsigned BGST :1;
};
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __at(0xFD2);

# 8344
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 8364
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T08BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 8434
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 8526
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");




extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned INT3IF :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned INT3IE :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned INT3F :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned INT3E :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 8820
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned RBIP :1;
unsigned INT3IP :1;
unsigned TMR0IP :1;
unsigned INTEDG3 :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :1;
unsigned INT3P :1;
unsigned T0IP :1;
unsigned :4;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 8913
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


extern volatile unsigned char INTCON1 __at(0xFF2);

asm("INTCON1 equ 0FF2h");


typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 9033
typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCON1bits_t;
extern volatile INTCON1bits_t INTCON1bits __at(0xFF2);

# 9145
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");

# 9174
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 9204
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned STKPTR0 :1;
unsigned STKPTR1 :1;
unsigned STKPTR2 :1;
unsigned STKPTR3 :1;
unsigned STKPTR4 :1;
unsigned :2;
unsigned STKOVF :1;
};
struct {
unsigned SP0 :1;
unsigned SP1 :1;
unsigned SP2 :1;
unsigned SP3 :1;
unsigned SP4 :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 9345
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 9384
extern volatile __bit A16 __at(0x7C38);


extern volatile __bit A17 __at(0x7C39);


extern volatile __bit A18 __at(0x7C3A);


extern volatile __bit A19 __at(0x7C3B);


extern volatile __bit ACKDT __at(0x7E2D);


extern volatile __bit ACKEN __at(0x7E2C);


extern volatile __bit ACKSTAT __at(0x7E2E);


extern volatile __bit AD0 __at(0x7C18);


extern volatile __bit AD00 __at(0x7C18);


extern volatile __bit AD01 __at(0x7C19);


extern volatile __bit AD02 __at(0x7C1A);


extern volatile __bit AD03 __at(0x7C1B);


extern volatile __bit AD04 __at(0x7C1C);


extern volatile __bit AD05 __at(0x7C1D);


extern volatile __bit AD06 __at(0x7C1E);


extern volatile __bit AD07 __at(0x7C1F);


extern volatile __bit AD08 __at(0x7C20);


extern volatile __bit AD09 __at(0x7C21);


extern volatile __bit AD1 __at(0x7C19);


extern volatile __bit AD10 __at(0x7C22);


extern volatile __bit AD11 __at(0x7C23);


extern volatile __bit AD12 __at(0x7C24);


extern volatile __bit AD13 __at(0x7C25);


extern volatile __bit AD14 __at(0x7C26);


extern volatile __bit AD15 __at(0x7C27);


extern volatile __bit AD16 __at(0x7C38);


extern volatile __bit AD17 __at(0x7C39);


extern volatile __bit AD18 __at(0x7C3A);


extern volatile __bit AD19 __at(0x7C3B);


extern volatile __bit AD2 __at(0x7C1A);


extern volatile __bit AD3 __at(0x7C1B);


extern volatile __bit AD4 __at(0x7C1C);


extern volatile __bit AD5 __at(0x7C1D);


extern volatile __bit AD6 __at(0x7C1E);


extern volatile __bit AD7 __at(0x7C1F);


extern volatile __bit AD8 __at(0x7C20);


extern volatile __bit AD9 __at(0x7C21);


extern volatile __bit ADCS0 __at(0x7E00);


extern volatile __bit ADCS1 __at(0x7E01);


extern volatile __bit ADCS2 __at(0x7E02);


extern volatile __bit __attribute__((__deprecated__)) ADDEN __at(0x7D5B);


extern volatile __bit ADDEN1 __at(0x7D5B);


extern volatile __bit ADDEN2 __at(0x7B5B);


extern volatile __bit ADFM __at(0x7E07);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit ALE __at(0x7C40);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN10 __at(0x7C2D);


extern volatile __bit AN11 __at(0x7C2E);


extern volatile __bit AN12 __at(0x7C3C);


extern volatile __bit AN13 __at(0x7C3D);


extern volatile __bit AN14 __at(0x7C3E);


extern volatile __bit AN15 __at(0x7C3F);


extern volatile __bit AN2 __at(0x7C02);


extern volatile __bit AN3 __at(0x7C03);


extern volatile __bit AN4 __at(0x7C05);


extern volatile __bit AN5 __at(0x7C28);


extern volatile __bit AN6 __at(0x7C29);


extern volatile __bit AN7 __at(0x7C2A);


extern volatile __bit AN8 __at(0x7C2B);


extern volatile __bit AN9 __at(0x7C2C);


extern volatile __bit BA0 __at(0x7C44);


extern volatile __bit BCLIE __at(0x7D03);


extern volatile __bit BCLIF __at(0x7D0B);


extern volatile __bit BCLIP __at(0x7D13);


extern volatile __bit BF __at(0x7E38);


extern volatile __bit BGST __at(0x7E95);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit __attribute__((__deprecated__)) BRGH __at(0x7D62);


extern volatile __bit BRGH1 __at(0x7D62);


extern volatile __bit BRGH2 __at(0x7B62);


extern volatile __bit C1INV __at(0x7DA4);


extern volatile __bit __attribute__((__deprecated__)) C1OUT __at(0x7DA6);


extern volatile __bit C1OUTF __at(0x7C2A);


extern volatile __bit C2INV __at(0x7DA5);


extern volatile __bit __attribute__((__deprecated__)) C2OUT __at(0x7DA7);


extern volatile __bit C2OUTF __at(0x7C29);


extern volatile __bit C3OUTG __at(0x7C31);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCP1 __at(0x7C12);


extern volatile __bit CCP10 __at(0x7C22);


extern volatile __bit CCP1IE __at(0x7CEA);


extern volatile __bit CCP1IF __at(0x7CF2);


extern volatile __bit CCP1IP __at(0x7CFA);


extern volatile __bit CCP1M0 __at(0x7DE8);


extern volatile __bit CCP1M1 __at(0x7DE9);


extern volatile __bit CCP1M2 __at(0x7DEA);


extern volatile __bit CCP1M3 __at(0x7DEB);


extern volatile __bit CCP1X __at(0x7DED);


extern volatile __bit CCP1Y __at(0x7DEC);


extern volatile __bit CCP2C __at(0x7C27);


extern volatile __bit CCP2E __at(0x7C27);


extern volatile __bit CCP2IE __at(0x7D00);


extern volatile __bit CCP2IF __at(0x7D08);


extern volatile __bit CCP2IP __at(0x7D10);


extern volatile __bit CCP2M0 __at(0x7DD0);


extern volatile __bit CCP2M1 __at(0x7DD1);


extern volatile __bit CCP2M2 __at(0x7DD2);


extern volatile __bit CCP2M3 __at(0x7DD3);


extern volatile __bit CCP2X __at(0x7DD5);


extern volatile __bit CCP2Y __at(0x7DD4);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CCP3 __at(0x7C30);


extern volatile __bit CCP3IE __at(0x7D18);


extern volatile __bit CCP3IF __at(0x7D20);


extern volatile __bit CCP3IP __at(0x7D28);


extern volatile __bit CCP3M0 __at(0x7DB8);


extern volatile __bit CCP3M1 __at(0x7DB9);


extern volatile __bit CCP3M2 __at(0x7DBA);


extern volatile __bit CCP3M3 __at(0x7DBB);


extern volatile __bit CCP4 __at(0x7C33);


extern volatile __bit CCP4IE __at(0x7D19);


extern volatile __bit CCP4IF __at(0x7D21);


extern volatile __bit CCP4IP __at(0x7D29);


extern volatile __bit CCP4M0 __at(0x7B98);


extern volatile __bit CCP4M1 __at(0x7B99);


extern volatile __bit CCP4M2 __at(0x7B9A);


extern volatile __bit CCP4M3 __at(0x7B9B);


extern volatile __bit CCP5 __at(0x7C34);


extern volatile __bit CCP5IE __at(0x7D1A);


extern volatile __bit CCP5IF __at(0x7D22);


extern volatile __bit CCP5IP __at(0x7D2A);


extern volatile __bit CCP5M0 __at(0x7B80);


extern volatile __bit CCP5M1 __at(0x7B81);


extern volatile __bit CCP5M2 __at(0x7B82);


extern volatile __bit CCP5M3 __at(0x7B83);


extern volatile __bit CCP6 __at(0x7C3F);


extern volatile __bit CCP6E __at(0x7C26);


extern volatile __bit CCP7 __at(0x7C3E);


extern volatile __bit CCP7E __at(0x7C25);


extern volatile __bit CCP8 __at(0x7C3D);


extern volatile __bit CCP8E __at(0x7C24);


extern volatile __bit CCP9 __at(0x7C3C);


extern volatile __bit CCP9E __at(0x7C23);


extern volatile __bit CE __at(0x7C45);


extern volatile __bit CFGS __at(0x7D36);


extern volatile __bit CHS0 __at(0x7E12);


extern volatile __bit CHS1 __at(0x7E13);


extern volatile __bit CHS2 __at(0x7E14);


extern volatile __bit CHS3 __at(0x7E15);


extern volatile __bit CHSN3 __at(0x7E0B);


extern volatile __bit CIS __at(0x7DA3);


extern volatile __bit CK __at(0x7C16);


extern volatile __bit CK2 __at(0x7C31);


extern volatile __bit CKE __at(0x7E3E);


extern volatile __bit CKP __at(0x7E34);


extern volatile __bit CLKO __at(0x7C06);


extern volatile __bit CM0 __at(0x7DA0);


extern volatile __bit CM1 __at(0x7DA1);


extern volatile __bit CM2 __at(0x7DA2);


extern volatile __bit CMEN0 __at(0x7DA0);


extern volatile __bit CMEN1 __at(0x7DA1);


extern volatile __bit CMEN2 __at(0x7DA2);


extern volatile __bit CMIE __at(0x7D06);


extern volatile __bit CMIF __at(0x7D0E);


extern volatile __bit CMIP __at(0x7D16);


extern volatile __bit __attribute__((__deprecated__)) CREN __at(0x7D5C);


extern volatile __bit CREN1 __at(0x7D5C);


extern volatile __bit CREN2 __at(0x7B5C);


extern volatile __bit CS __at(0x7C22);


extern volatile __bit __attribute__((__deprecated__)) CSRC __at(0x7D67);


extern volatile __bit CSRC1 __at(0x7D67);


extern volatile __bit CSRC2 __at(0x7B67);


extern volatile __bit CVR0 __at(0x7DA8);


extern volatile __bit CVR1 __at(0x7DA9);


extern volatile __bit CVR2 __at(0x7DAA);


extern volatile __bit CVR3 __at(0x7DAB);


extern volatile __bit CVREN __at(0x7DAF);


extern volatile __bit CVROE __at(0x7DAE);


extern volatile __bit CVROEN __at(0x7DAE);


extern volatile __bit CVRR __at(0x7DAD);


extern volatile __bit CVRSS __at(0x7DAC);


extern volatile __bit DA __at(0x7E3D);


extern volatile __bit DATA_ADDRESS __at(0x7E3D);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DC1B0 __at(0x7DEC);


extern volatile __bit DC1B1 __at(0x7DED);


extern volatile __bit DC2B0 __at(0x7DD4);


extern volatile __bit DC2B1 __at(0x7DD5);


extern volatile __bit DC3B0 __at(0x7DBC);


extern volatile __bit DC3B1 __at(0x7DBD);


extern volatile __bit DC4B0 __at(0x7B9C);


extern volatile __bit DC4B1 __at(0x7B9D);


extern volatile __bit DC5B0 __at(0x7B84);


extern volatile __bit DC5B1 __at(0x7B85);


extern volatile __bit DCCP1X __at(0x7DED);


extern volatile __bit DCCP1Y __at(0x7DEC);


extern volatile __bit DCCP2X __at(0x7DD5);


extern volatile __bit DCCP2Y __at(0x7DD4);


extern volatile __bit DCCP3X __at(0x7DBD);


extern volatile __bit DCCP3Y __at(0x7DBC);


extern volatile __bit DCCP4X __at(0x7B9D);


extern volatile __bit DCCP4Y __at(0x7B9C);


extern volatile __bit DCCP5X __at(0x7B85);


extern volatile __bit DCCP5Y __at(0x7B84);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DT __at(0x7C17);


extern volatile __bit DT2 __at(0x7C32);


extern volatile __bit D_A __at(0x7E3D);


extern volatile __bit D_NOT_A __at(0x7E3D);


extern volatile __bit D_nA __at(0x7E3D);


extern volatile __bit EBDIS __at(0x7CE7);


extern volatile __bit EEFS __at(0x7D36);


extern volatile __bit EEIE __at(0x7D04);


extern volatile __bit EEIF __at(0x7D0C);


extern volatile __bit EEIP __at(0x7D14);


extern volatile __bit EEPGD __at(0x7D37);


extern volatile __bit __attribute__((__deprecated__)) FERR __at(0x7D5A);


extern volatile __bit FERR1 __at(0x7D5A);


extern volatile __bit FERR2 __at(0x7B5A);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit GCEN __at(0x7E2F);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit I2C_DAT __at(0x7E3D);


extern volatile __bit I2C_READ __at(0x7E3A);


extern volatile __bit I2C_START __at(0x7E3B);


extern volatile __bit I2C_STOP __at(0x7E3C);


extern volatile __bit IBF __at(0x7D87);


extern volatile __bit IBOV __at(0x7D85);


extern volatile __bit INT0 __at(0x7C08);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1 __at(0x7C09);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2 __at(0x7C0A);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INT3 __at(0x7C0B);


extern volatile __bit INT3E __at(0x7F85);


extern volatile __bit INT3F __at(0x7F82);


extern volatile __bit INT3IE __at(0x7F85);


extern volatile __bit INT3IF __at(0x7F82);


extern volatile __bit INT3IP __at(0x7F89);


extern volatile __bit INT3P __at(0x7F89);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit INTEDG3 __at(0x7F8B);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRVST __at(0x7E95);


extern volatile __bit KBI0 __at(0x7C0C);


extern volatile __bit KBI1 __at(0x7C0D);


extern volatile __bit KBI2 __at(0x7C0E);


extern volatile __bit KBI3 __at(0x7C0F);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA4 __at(0x7C4C);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA4 __at(0x7C4C);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LATC0 __at(0x7C58);


extern volatile __bit LATC1 __at(0x7C59);


extern volatile __bit LATC2 __at(0x7C5A);


extern volatile __bit LATC3 __at(0x7C5B);


extern volatile __bit LATC4 __at(0x7C5C);


extern volatile __bit LATC5 __at(0x7C5D);


extern volatile __bit LATC6 __at(0x7C5E);


extern volatile __bit LATC7 __at(0x7C5F);


extern volatile __bit LATD0 __at(0x7C60);


extern volatile __bit LATD1 __at(0x7C61);


extern volatile __bit LATD2 __at(0x7C62);


extern volatile __bit LATD3 __at(0x7C63);


extern volatile __bit LATD4 __at(0x7C64);


extern volatile __bit LATD5 __at(0x7C65);


extern volatile __bit LATD6 __at(0x7C66);


extern volatile __bit LATD7 __at(0x7C67);


extern volatile __bit LATE0 __at(0x7C68);


extern volatile __bit LATE1 __at(0x7C69);


extern volatile __bit LATE2 __at(0x7C6A);


extern volatile __bit LATE3 __at(0x7C6B);


extern volatile __bit LATE4 __at(0x7C6C);


extern volatile __bit LATE5 __at(0x7C6D);


extern volatile __bit LATE6 __at(0x7C6E);


extern volatile __bit LATE7 __at(0x7C6F);


extern volatile __bit LATF0 __at(0x7C70);


extern volatile __bit LATF1 __at(0x7C71);


extern volatile __bit LATF2 __at(0x7C72);


extern volatile __bit LATF3 __at(0x7C73);


extern volatile __bit LATF4 __at(0x7C74);


extern volatile __bit LATF5 __at(0x7C75);


extern volatile __bit LATF6 __at(0x7C76);


extern volatile __bit LATF7 __at(0x7C77);


extern volatile __bit LATG0 __at(0x7C78);


extern volatile __bit LATG1 __at(0x7C79);


extern volatile __bit LATG2 __at(0x7C7A);


extern volatile __bit LATG3 __at(0x7C7B);


extern volatile __bit LATG4 __at(0x7C7C);


extern volatile __bit LATH0 __at(0x7C80);


extern volatile __bit LATH1 __at(0x7C81);


extern volatile __bit LATH2 __at(0x7C82);


extern volatile __bit LATH3 __at(0x7C83);


extern volatile __bit LATH4 __at(0x7C84);


extern volatile __bit LATH5 __at(0x7C85);


extern volatile __bit LATH6 __at(0x7C86);


extern volatile __bit LATH7 __at(0x7C87);


extern volatile __bit LATJ0 __at(0x7C88);


extern volatile __bit LATJ1 __at(0x7C89);


extern volatile __bit LATJ2 __at(0x7C8A);


extern volatile __bit LATJ3 __at(0x7C8B);


extern volatile __bit LATJ4 __at(0x7C8C);


extern volatile __bit LATJ5 __at(0x7C8D);


extern volatile __bit LATJ6 __at(0x7C8E);


extern volatile __bit LATJ7 __at(0x7C8F);


extern volatile __bit LB __at(0x7C46);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LC0 __at(0x7C58);


extern volatile __bit LC1 __at(0x7C59);


extern volatile __bit LC2 __at(0x7C5A);


extern volatile __bit LC3 __at(0x7C5B);


extern volatile __bit LC4 __at(0x7C5C);


extern volatile __bit LC5 __at(0x7C5D);


extern volatile __bit LC6 __at(0x7C5E);


extern volatile __bit LC7 __at(0x7C5F);


extern volatile __bit LD0 __at(0x7C60);


extern volatile __bit LD1 __at(0x7C61);


extern volatile __bit LD2 __at(0x7C62);


extern volatile __bit LD3 __at(0x7C63);


extern volatile __bit LD4 __at(0x7C64);


extern volatile __bit LD5 __at(0x7C65);


extern volatile __bit LD6 __at(0x7C66);


extern volatile __bit LD7 __at(0x7C67);


extern volatile __bit LE0 __at(0x7C68);


extern volatile __bit LE1 __at(0x7C69);


extern volatile __bit LE2 __at(0x7C6A);


extern volatile __bit LE3 __at(0x7C6B);


extern volatile __bit LE4 __at(0x7C6C);


extern volatile __bit LE5 __at(0x7C6D);


extern volatile __bit LE6 __at(0x7C6E);


extern volatile __bit LE7 __at(0x7C6F);


extern volatile __bit LF0 __at(0x7C70);


extern volatile __bit LF1 __at(0x7C71);


extern volatile __bit LF2 __at(0x7C72);


extern volatile __bit LF3 __at(0x7C73);


extern volatile __bit LF4 __at(0x7C74);


extern volatile __bit LF5 __at(0x7C75);


extern volatile __bit LF6 __at(0x7C76);


extern volatile __bit LF7 __at(0x7C77);


extern volatile __bit LG0 __at(0x7C78);


extern volatile __bit LG1 __at(0x7C79);


extern volatile __bit LG2 __at(0x7C7A);


extern volatile __bit LG3 __at(0x7C7B);


extern volatile __bit LG4 __at(0x7C7C);


extern volatile __bit LH0 __at(0x7C80);


extern volatile __bit LH1 __at(0x7C81);


extern volatile __bit LH2 __at(0x7C82);


extern volatile __bit LH3 __at(0x7C83);


extern volatile __bit LH4 __at(0x7C84);


extern volatile __bit LH5 __at(0x7C85);


extern volatile __bit LH6 __at(0x7C86);


extern volatile __bit LH7 __at(0x7C87);


extern volatile __bit LJ0 __at(0x7C88);


extern volatile __bit LJ1 __at(0x7C89);


extern volatile __bit LJ2 __at(0x7C8A);


extern volatile __bit LJ3 __at(0x7C8B);


extern volatile __bit LJ4 __at(0x7C8C);


extern volatile __bit LJ5 __at(0x7C8D);


extern volatile __bit LJ6 __at(0x7C8E);


extern volatile __bit LJ7 __at(0x7C8F);


extern volatile __bit LVDEN __at(0x7E94);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit LVDL0 __at(0x7E90);


extern volatile __bit LVDL1 __at(0x7E91);


extern volatile __bit LVDL2 __at(0x7E92);


extern volatile __bit LVDL3 __at(0x7E93);


extern volatile __bit LVV0 __at(0x7E90);


extern volatile __bit LVV1 __at(0x7E91);


extern volatile __bit LVV2 __at(0x7E92);


extern volatile __bit LVV3 __at(0x7E93);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_A __at(0x7E3D);


extern volatile __bit NOT_ADDRESS __at(0x7E3D);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_IPEN __at(0x7E87);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_T3SYNC __at(0x7D8A);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit NOT_W __at(0x7E3A);


extern volatile __bit NOT_WRITE __at(0x7E3A);


extern volatile __bit OBF __at(0x7D86);


extern volatile __bit OE __at(0x7C41);


extern volatile __bit __attribute__((__deprecated__)) OERR __at(0x7D59);


extern volatile __bit OERR1 __at(0x7D59);


extern volatile __bit OERR2 __at(0x7B59);


extern volatile __bit OSC2 __at(0x7C06);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit PA1 __at(0x7C12);


extern volatile __bit PA2 __at(0x7C11);


extern volatile __bit PA2E __at(0x7C27);


extern volatile __bit PB1 __at(0x7C3F);


extern volatile __bit PB1E __at(0x7C26);


extern volatile __bit PB2 __at(0x7C22);


extern volatile __bit PB3 __at(0x7C3D);


extern volatile __bit PB3E __at(0x7C24);


extern volatile __bit PC1 __at(0x7C3E);


extern volatile __bit PC1E __at(0x7C25);


extern volatile __bit PC2 __at(0x7C21);


extern volatile __bit PC3 __at(0x7C3C);


extern volatile __bit PC3E __at(0x7C23);


extern volatile __bit PCFG0 __at(0x7E08);


extern volatile __bit PCFG1 __at(0x7E09);


extern volatile __bit PCFG2 __at(0x7E0A);


extern volatile __bit PCFG3 __at(0x7E0B);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PD2 __at(0x7C20);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit PEN __at(0x7E2A);


extern volatile __bit PGC __at(0x7C0E);


extern volatile __bit PGD __at(0x7C0F);


extern volatile __bit PGM __at(0x7C0D);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PSP0 __at(0x7C18);


extern volatile __bit PSP1 __at(0x7C19);


extern volatile __bit PSP2 __at(0x7C1A);


extern volatile __bit PSP3 __at(0x7C1B);


extern volatile __bit PSP4 __at(0x7C1C);


extern volatile __bit PSP5 __at(0x7C1D);


extern volatile __bit PSP6 __at(0x7C1E);


extern volatile __bit PSP7 __at(0x7C1F);


extern volatile __bit PSPIE __at(0x7CEF);


extern volatile __bit PSPIF __at(0x7CF7);


extern volatile __bit PSPIP __at(0x7CFF);


extern volatile __bit PSPMODE __at(0x7D84);


extern volatile __bit __attribute__((__deprecated__)) RA0 __at(0x7C00);


extern volatile __bit __attribute__((__deprecated__)) RA1 __at(0x7C01);


extern volatile __bit __attribute__((__deprecated__)) RA2 __at(0x7C02);


extern volatile __bit __attribute__((__deprecated__)) RA3 __at(0x7C03);


extern volatile __bit __attribute__((__deprecated__)) RA4 __at(0x7C04);


extern volatile __bit __attribute__((__deprecated__)) RA5 __at(0x7C05);


extern volatile __bit __attribute__((__deprecated__)) RA6 __at(0x7C06);


extern volatile __bit __attribute__((__deprecated__)) RB0 __at(0x7C08);


extern volatile __bit __attribute__((__deprecated__)) RB1 __at(0x7C09);


extern volatile __bit __attribute__((__deprecated__)) RB2 __at(0x7C0A);


extern volatile __bit __attribute__((__deprecated__)) RB3 __at(0x7C0B);


extern volatile __bit __attribute__((__deprecated__)) RB4 __at(0x7C0C);


extern volatile __bit __attribute__((__deprecated__)) RB5 __at(0x7C0D);


extern volatile __bit __attribute__((__deprecated__)) RB6 __at(0x7C0E);


extern volatile __bit __attribute__((__deprecated__)) RB7 __at(0x7C0F);


extern volatile __bit RBIE __at(0x7F93);


extern volatile __bit RBIF __at(0x7F90);


extern volatile __bit RBIP __at(0x7F88);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit __attribute__((__deprecated__)) RC0 __at(0x7C10);


extern volatile __bit __attribute__((__deprecated__)) RC1 __at(0x7C11);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit __attribute__((__deprecated__)) RC2 __at(0x7C12);


extern volatile __bit RC2IE __at(0x7D1D);


extern volatile __bit RC2IF __at(0x7D25);


extern volatile __bit RC2IP __at(0x7D2D);


extern volatile __bit __attribute__((__deprecated__)) RC3 __at(0x7C13);


extern volatile __bit __attribute__((__deprecated__)) RC4 __at(0x7C14);


extern volatile __bit __attribute__((__deprecated__)) RC5 __at(0x7C15);


extern volatile __bit __attribute__((__deprecated__)) RC6 __at(0x7C16);


extern volatile __bit __attribute__((__deprecated__)) RC7 __at(0x7C17);


extern volatile __bit RC8_92 __at(0x7B5E);


extern volatile __bit RC92 __at(0x7B5E);


extern volatile __bit RCD82 __at(0x7B58);


extern volatile __bit RCEN __at(0x7E2B);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit __attribute__((__deprecated__)) RD __at(0x7D30);


extern volatile __bit __attribute__((__deprecated__)) RD0 __at(0x7C18);


extern volatile __bit __attribute__((__deprecated__)) RD1 __at(0x7C19);


extern volatile __bit __attribute__((__deprecated__)) RD16 __at(0x7E6F);


extern volatile __bit RD163 __at(0x7D8F);


extern volatile __bit __attribute__((__deprecated__)) RD2 __at(0x7C1A);


extern volatile __bit __attribute__((__deprecated__)) RD3 __at(0x7C1B);


extern volatile __bit __attribute__((__deprecated__)) RD4 __at(0x7C1C);


extern volatile __bit __attribute__((__deprecated__)) RD5 __at(0x7C1D);


extern volatile __bit __attribute__((__deprecated__)) RD6 __at(0x7C1E);


extern volatile __bit __attribute__((__deprecated__)) RD7 __at(0x7C1F);


extern volatile __bit RDE __at(0x7C20);


extern volatile __bit __attribute__((__deprecated__)) RE0 __at(0x7C20);


extern volatile __bit __attribute__((__deprecated__)) RE1 __at(0x7C21);


extern volatile __bit __attribute__((__deprecated__)) RE2 __at(0x7C22);


extern volatile __bit __attribute__((__deprecated__)) RE3 __at(0x7C23);


extern volatile __bit __attribute__((__deprecated__)) RE4 __at(0x7C24);


extern volatile __bit __attribute__((__deprecated__)) RE5 __at(0x7C25);


extern volatile __bit __attribute__((__deprecated__)) RE6 __at(0x7C26);


extern volatile __bit __attribute__((__deprecated__)) RE7 __at(0x7C27);


extern volatile __bit READ_WRITE __at(0x7E3A);


extern volatile __bit __attribute__((__deprecated__)) RF0 __at(0x7C28);


extern volatile __bit __attribute__((__deprecated__)) RF1 __at(0x7C29);


extern volatile __bit __attribute__((__deprecated__)) RF2 __at(0x7C2A);


extern volatile __bit __attribute__((__deprecated__)) RF3 __at(0x7C2B);


extern volatile __bit __attribute__((__deprecated__)) RF4 __at(0x7C2C);


extern volatile __bit __attribute__((__deprecated__)) RF5 __at(0x7C2D);


extern volatile __bit __attribute__((__deprecated__)) RF6 __at(0x7C2E);


extern volatile __bit __attribute__((__deprecated__)) RF7 __at(0x7C2F);


extern volatile __bit __attribute__((__deprecated__)) RG0 __at(0x7C30);


extern volatile __bit __attribute__((__deprecated__)) RG1 __at(0x7C31);


extern volatile __bit __attribute__((__deprecated__)) RG2 __at(0x7C32);


extern volatile __bit __attribute__((__deprecated__)) RG3 __at(0x7C33);


extern volatile __bit __attribute__((__deprecated__)) RG4 __at(0x7C34);


extern volatile __bit __attribute__((__deprecated__)) RH0 __at(0x7C38);


extern volatile __bit __attribute__((__deprecated__)) RH1 __at(0x7C39);


extern volatile __bit __attribute__((__deprecated__)) RH2 __at(0x7C3A);


extern volatile __bit __attribute__((__deprecated__)) RH3 __at(0x7C3B);


extern volatile __bit __attribute__((__deprecated__)) RH4 __at(0x7C3C);


extern volatile __bit __attribute__((__deprecated__)) RH5 __at(0x7C3D);


extern volatile __bit __attribute__((__deprecated__)) RH6 __at(0x7C3E);


extern volatile __bit __attribute__((__deprecated__)) RH7 __at(0x7C3F);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit __attribute__((__deprecated__)) RJ0 __at(0x7C40);


extern volatile __bit __attribute__((__deprecated__)) RJ1 __at(0x7C41);


extern volatile __bit __attribute__((__deprecated__)) RJ2 __at(0x7C42);


extern volatile __bit __attribute__((__deprecated__)) RJ3 __at(0x7C43);


extern volatile __bit __attribute__((__deprecated__)) RJ4 __at(0x7C44);


extern volatile __bit __attribute__((__deprecated__)) RJ5 __at(0x7C45);


extern volatile __bit __attribute__((__deprecated__)) RJ6 __at(0x7C46);


extern volatile __bit __attribute__((__deprecated__)) RJ7 __at(0x7C47);


extern volatile __bit RSEN __at(0x7E29);


extern volatile __bit RW __at(0x7E3A);


extern volatile __bit RX __at(0x7C17);


extern volatile __bit RX2 __at(0x7C32);


extern volatile __bit __attribute__((__deprecated__)) RX9 __at(0x7D5E);


extern volatile __bit RX91 __at(0x7D5E);


extern volatile __bit RX92 __at(0x7B5E);


extern volatile __bit __attribute__((__deprecated__)) RX9D __at(0x7D58);


extern volatile __bit RX9D1 __at(0x7D58);


extern volatile __bit RX9D2 __at(0x7B58);


extern volatile __bit RXB0IE __at(0x7D18);


extern volatile __bit RXB1IE __at(0x7D19);


extern volatile __bit RXBNIE __at(0x7D19);


extern volatile __bit RXBNIF __at(0x7D21);


extern volatile __bit RXBNIP __at(0x7D29);


extern volatile __bit R_NOT_W __at(0x7E3A);


extern volatile __bit R_W __at(0x7E3A);


extern volatile __bit R_nW __at(0x7E3A);


extern volatile __bit SCK __at(0x7C13);


extern volatile __bit SCL __at(0x7C13);


extern volatile __bit SCS __at(0x7E98);


extern volatile __bit SDA __at(0x7C14);


extern volatile __bit SDI __at(0x7C14);


extern volatile __bit SDO __at(0x7C15);


extern volatile __bit SEN __at(0x7E28);


extern volatile __bit SENDB __at(0x7D63);


extern volatile __bit SENDB1 __at(0x7D63);


extern volatile __bit SENDB2 __at(0x7B63);


extern volatile __bit SMP __at(0x7E3F);


extern volatile __bit SOSCEN __at(0x7E6B);


extern volatile __bit SOSCEN3 __at(0x7D8B);


extern volatile __bit SP0 __at(0x7FE0);


extern volatile __bit SP1 __at(0x7FE1);


extern volatile __bit SP2 __at(0x7FE2);


extern volatile __bit SP3 __at(0x7FE3);


extern volatile __bit SP4 __at(0x7FE4);


extern volatile __bit __attribute__((__deprecated__)) SPEN __at(0x7D5F);


extern volatile __bit SPEN1 __at(0x7D5F);


extern volatile __bit SPEN2 __at(0x7B5F);


extern volatile __bit __attribute__((__deprecated__)) SREN __at(0x7D5D);


extern volatile __bit SREN1 __at(0x7D5D);


extern volatile __bit SREN2 __at(0x7B5D);


extern volatile __bit SRENA __at(0x7D5D);


extern volatile __bit SS __at(0x7C2F);


extern volatile __bit SS2 __at(0x7C1F);


extern volatile __bit SSPEN __at(0x7E35);


extern volatile __bit SSPIE __at(0x7CEB);


extern volatile __bit SSPIF __at(0x7CF3);


extern volatile __bit SSPIP __at(0x7CFB);


extern volatile __bit SSPM0 __at(0x7E30);


extern volatile __bit SSPM1 __at(0x7E31);


extern volatile __bit SSPM2 __at(0x7E32);


extern volatile __bit SSPM3 __at(0x7E33);


extern volatile __bit SSPOV __at(0x7E36);


extern volatile __bit START __at(0x7E3B);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKPTR0 __at(0x7FE0);


extern volatile __bit STKPTR1 __at(0x7FE1);


extern volatile __bit STKPTR2 __at(0x7FE2);


extern volatile __bit STKPTR3 __at(0x7FE3);


extern volatile __bit STKPTR4 __at(0x7FE4);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit STOP __at(0x7E3C);


extern volatile __bit SWDTE __at(0x7E88);


extern volatile __bit SWDTEN __at(0x7E88);


extern volatile __bit __attribute__((__deprecated__)) SYNC __at(0x7D64);


extern volatile __bit SYNC1 __at(0x7D64);


extern volatile __bit SYNC2 __at(0x7B64);


extern volatile __bit T08BIT __at(0x7EAE);


extern volatile __bit T0CKI __at(0x7C04);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0IP __at(0x7F8A);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T13CKI __at(0x7C10);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1INSYNC __at(0x7E6A);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1OSI __at(0x7C11);


extern volatile __bit T1OSO __at(0x7C10);


extern volatile __bit T1RD16 __at(0x7E6F);


extern volatile __bit T1SYNC __at(0x7E6A);


extern volatile __bit T2CKPS0 __at(0x7E50);


extern volatile __bit T2CKPS1 __at(0x7E51);


extern volatile __bit T2OUTPS0 __at(0x7E53);


extern volatile __bit T2OUTPS1 __at(0x7E54);


extern volatile __bit T2OUTPS2 __at(0x7E55);


extern volatile __bit T2OUTPS3 __at(0x7E56);


extern volatile __bit T3CCP1 __at(0x7D8B);


extern volatile __bit T3CCP2 __at(0x7D8E);


extern volatile __bit T3CKPS0 __at(0x7D8C);


extern volatile __bit T3CKPS1 __at(0x7D8D);


extern volatile __bit T3INSYNC __at(0x7D8A);


extern volatile __bit T3NSYNC __at(0x7D8A);


extern volatile __bit T3RD16 __at(0x7D8F);


extern volatile __bit T3SYNC __at(0x7D8A);


extern volatile __bit T4CKPS0 __at(0x7BB0);


extern volatile __bit T4CKPS1 __at(0x7BB1);


extern volatile __bit T4OUTPS0 __at(0x7BB3);


extern volatile __bit T4OUTPS1 __at(0x7BB4);


extern volatile __bit T4OUTPS2 __at(0x7BB5);


extern volatile __bit T4OUTPS3 __at(0x7BB6);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS __at(0x7E69);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TMR2IE __at(0x7CE9);


extern volatile __bit TMR2IF __at(0x7CF1);


extern volatile __bit TMR2IP __at(0x7CF9);


extern volatile __bit TMR2ON __at(0x7E52);


extern volatile __bit TMR3CS __at(0x7D89);


extern volatile __bit TMR3IE __at(0x7D01);


extern volatile __bit TMR3IF __at(0x7D09);


extern volatile __bit TMR3IP __at(0x7D11);


extern volatile __bit TMR3ON __at(0x7D88);


extern volatile __bit TMR4IE __at(0x7D1B);


extern volatile __bit TMR4IF __at(0x7D23);


extern volatile __bit TMR4IP __at(0x7D2B);


extern volatile __bit TMR4ON __at(0x7BB2);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA4 __at(0x7C94);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRISC0 __at(0x7CA0);


extern volatile __bit TRISC1 __at(0x7CA1);


extern volatile __bit TRISC2 __at(0x7CA2);


extern volatile __bit TRISC3 __at(0x7CA3);


extern volatile __bit TRISC4 __at(0x7CA4);


extern volatile __bit TRISC5 __at(0x7CA5);


extern volatile __bit TRISC6 __at(0x7CA6);


extern volatile __bit TRISC7 __at(0x7CA7);


extern volatile __bit TRISD0 __at(0x7CA8);


extern volatile __bit TRISD1 __at(0x7CA9);


extern volatile __bit TRISD2 __at(0x7CAA);


extern volatile __bit TRISD3 __at(0x7CAB);


extern volatile __bit TRISD4 __at(0x7CAC);


extern volatile __bit TRISD5 __at(0x7CAD);


extern volatile __bit TRISD6 __at(0x7CAE);


extern volatile __bit TRISD7 __at(0x7CAF);


extern volatile __bit TRISE0 __at(0x7CB0);


extern volatile __bit TRISE1 __at(0x7CB1);


extern volatile __bit TRISE2 __at(0x7CB2);


extern volatile __bit TRISE3 __at(0x7CB3);


extern volatile __bit TRISE4 __at(0x7CB4);


extern volatile __bit TRISE5 __at(0x7CB5);


extern volatile __bit TRISE6 __at(0x7CB6);


extern volatile __bit TRISE7 __at(0x7CB7);


extern volatile __bit TRISF0 __at(0x7CB8);


extern volatile __bit TRISF1 __at(0x7CB9);


extern volatile __bit TRISF2 __at(0x7CBA);


extern volatile __bit TRISF3 __at(0x7CBB);


extern volatile __bit TRISF4 __at(0x7CBC);


extern volatile __bit TRISF5 __at(0x7CBD);


extern volatile __bit TRISF6 __at(0x7CBE);


extern volatile __bit TRISF7 __at(0x7CBF);


extern volatile __bit TRISG0 __at(0x7CC0);


extern volatile __bit TRISG1 __at(0x7CC1);


extern volatile __bit TRISG2 __at(0x7CC2);


extern volatile __bit TRISG3 __at(0x7CC3);


extern volatile __bit TRISG4 __at(0x7CC4);


extern volatile __bit TRISH0 __at(0x7CC8);


extern volatile __bit TRISH1 __at(0x7CC9);


extern volatile __bit TRISH2 __at(0x7CCA);


extern volatile __bit TRISH3 __at(0x7CCB);


extern volatile __bit TRISH4 __at(0x7CCC);


extern volatile __bit TRISH5 __at(0x7CCD);


extern volatile __bit TRISH6 __at(0x7CCE);


extern volatile __bit TRISH7 __at(0x7CCF);


extern volatile __bit TRISJ0 __at(0x7CD0);


extern volatile __bit TRISJ1 __at(0x7CD1);


extern volatile __bit TRISJ2 __at(0x7CD2);


extern volatile __bit TRISJ3 __at(0x7CD3);


extern volatile __bit TRISJ4 __at(0x7CD4);


extern volatile __bit TRISJ5 __at(0x7CD5);


extern volatile __bit TRISJ6 __at(0x7CD6);


extern volatile __bit TRISJ7 __at(0x7CD7);


extern volatile __bit __attribute__((__deprecated__)) TRMT __at(0x7D61);


extern volatile __bit TRMT1 __at(0x7D61);


extern volatile __bit TRMT2 __at(0x7B61);


extern volatile __bit TX __at(0x7C16);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX2 __at(0x7C31);


extern volatile __bit TX2IE __at(0x7D1C);


extern volatile __bit TX2IF __at(0x7D24);


extern volatile __bit TX2IP __at(0x7D2C);


extern volatile __bit TX8_92 __at(0x7B66);


extern volatile __bit __attribute__((__deprecated__)) TX9 __at(0x7D66);


extern volatile __bit TX91 __at(0x7D66);


extern volatile __bit TX92 __at(0x7B66);


extern volatile __bit __attribute__((__deprecated__)) TX9D __at(0x7D60);


extern volatile __bit TX9D1 __at(0x7D60);


extern volatile __bit TX9D2 __at(0x7B60);


extern volatile __bit TXB0IE __at(0x7D1A);


extern volatile __bit TXB1IE __at(0x7D1B);


extern volatile __bit TXB2IE __at(0x7D1C);


extern volatile __bit TXBNIE __at(0x7D1C);


extern volatile __bit TXBNIF __at(0x7D24);


extern volatile __bit TXBNIP __at(0x7D2C);


extern volatile __bit TXD82 __at(0x7B60);


extern volatile __bit __attribute__((__deprecated__)) TXEN __at(0x7D65);


extern volatile __bit TXEN1 __at(0x7D65);


extern volatile __bit TXEN2 __at(0x7B65);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit UA __at(0x7E39);


extern volatile __bit UB __at(0x7C47);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit VCFG0 __at(0x7E0C);


extern volatile __bit VCFG01 __at(0x7E0C);


extern volatile __bit VCFG1 __at(0x7E0D);


extern volatile __bit VCFG11 __at(0x7E0D);


extern volatile __bit VREFM __at(0x7C02);


extern volatile __bit VREFP __at(0x7C03);


extern volatile __bit WAIT0 __at(0x7CE4);


extern volatile __bit WAIT1 __at(0x7CE5);


extern volatile __bit WCOL __at(0x7E37);


extern volatile __bit WM0 __at(0x7CE0);


extern volatile __bit WM1 __at(0x7CE1);


extern volatile __bit __attribute__((__deprecated__)) WR __at(0x7D31);


extern volatile __bit WRE __at(0x7C21);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WRH __at(0x7C43);


extern volatile __bit WRL __at(0x7C42);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nA __at(0x7E3D);


extern volatile __bit nADDRESS __at(0x7E3D);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nDONE __at(0x7E11);


extern volatile __bit nIPEN __at(0x7E87);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nT3SYNC __at(0x7D8A);


extern volatile __bit nTO __at(0x7E83);


extern volatile __bit nW __at(0x7E3A);


extern volatile __bit nWRITE __at(0x7E3A);

# 19 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);

# 156
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 192
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);

# 4 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\pic\include\__size_t.h"
typedef unsigned size_t;

# 7 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 29 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 88 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdio.h"
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 7 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdlib.h"
typedef unsigned short wchar_t;

# 15
typedef struct {
int rem;
int quot;
} div_t;
typedef struct {
unsigned rem;
unsigned quot;
} udiv_t;
typedef struct {
long quot;
long rem;
} ldiv_t;
typedef struct {
unsigned long quot;
unsigned long rem;
} uldiv_t;

# 65
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

# 73
extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

# 85
extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

# 104
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);

# 14 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\string.h"
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

# 36
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);

# 34 "LCD.h"
void LCD_SETUP_4BIT(){

# 40
CCP2CONbits.CCP2M0 = 0x00;
CCP2CONbits.CCP2M1 = 0x00;
CCP2CONbits.CCP2M2 = 0x00;
CCP2CONbits.CCP2M3 = 0x00;




CCP1CONbits.CCP1M0 = 0x00;
CCP1CONbits.CCP1M1 = 0x00;
CCP1CONbits.CCP1M2 = 0x00;
CCP1CONbits.CCP1M3 = 0x00;

SSPCON1bits.SSPEN = 0x00;
RCSTA1bits.SPEN = 0x00;
RCSTA2bits.SPEN2 = 0x00;

T1CONbits.T1OSCEN = 0x00;

TRISJ0 = 0x00;
TRISJ1 = 0x00;
TRISB3 = 0x00;

TRISC0 = 0x00;
TRISC1 = 0x00;
TRISC2 = 0x00;
TRISC3 = 0x00;
}



void LCD_DATA(unsigned char data, int mode){
unsigned char _data = data;
unsigned int _4bit_[0x04];
if(mode == 0x04){
_data = _data>>0x04;
for(int x =0x00; x < 0x04; x-=-0x01){
_4bit_[x] = (_data & (0x01<<x))>>x;
}
TRISCbits.RC0 = (char)_4bit_[0x00];
TRISCbits.RC1 = (char)_4bit_[0x01];
TRISCbits.RC2 = (char)_4bit_[0x02];
TRISCbits.RC3 = (char)_4bit_[0x03];
PORTJbits.RJ1 = 0x01;
PORTBbits.RB3 = 0x00;
PORTJbits.RJ0 = 0x01;
_delay((unsigned long)((2)*(0x12BFCE0/4000.0)));
PORTJbits.RJ0 = 0x00;

_data = data;
for(int x = 0x00; x< 0x04; x-=-0x01){
_4bit_[x] = (_data & (0x01<<x))>>x;
}
TRISCbits.RC0 = (char)_4bit_[0x00];
TRISCbits.RC1 = (char)_4bit_[0x01];
TRISCbits.RC2 = (char)_4bit_[0x02];
TRISCbits.RC3 = (char)_4bit_[0x03];
PORTJbits.RJ1 = 0x01;
PORTBbits.RB3 = 0x00;
PORTJbits.RJ0 = 0x01;
_delay((unsigned long)((2)*(0x12BFCE0/4000.0)));
PORTJbits.RJ0 = 0x00;

}
}

void LCD_INSTRUCTION_4BIT(unsigned char instruction){
int _4bit_[0x04];
unsigned char data = instruction;
data = data>>0x04;
for(int x =0x00; x < 0x04; x-=-0x01){
_4bit_[x] = (data & (0x01<<x))>>x;
}
TRISCbits.RC0 = (char)_4bit_[0x00];
TRISCbits.RC1 = (char)_4bit_[0x01];
TRISCbits.RC2 = (char)_4bit_[0x02];
TRISCbits.RC3 = (char)_4bit_[0x03];
PORTJbits.RJ1 = 0x00;
PORTBbits.RB3 = 0x00;
PORTJbits.RJ0 = 0x01;
_delay((unsigned long)((2)*(0x12BFCE0/4000.0)));
PORTJbits.RJ0 = 0x00;

data = instruction;
for(int x = 0x00; x< 0x04; x-=-0x01){
_4bit_[x] = (data & (0x01<<x))>>x;
}
TRISCbits.RC0 = (char)_4bit_[0x00];
TRISCbits.RC1 = (char)_4bit_[0x01];
TRISCbits.RC2 = (char)_4bit_[0x02];
TRISCbits.RC3 = (char)_4bit_[0x03];
PORTJbits.RJ1 = 0x00;
PORTBbits.RB3 = 0x00;
PORTJbits.RJ0 = 0x01;
_delay((unsigned long)((2)*(0x12BFCE0/4000.0)));
PORTJbits.RJ0 = 0x00;

}
void LCD_SET_CURSOR(char a, char b){
char temp,z,y;
if(a== 1){
temp = 0x80 + b - 1;
z = temp>>4;
y = temp & 0x0F;
LCD_INSTRUCTION_4BIT(z);
LCD_INSTRUCTION_4BIT(y);
}

else if(a== 2)
{
temp = 0xC0 + b - 1;
z = temp>>4;
y = temp & 0x0F;
LCD_INSTRUCTION_4BIT(z);
LCD_INSTRUCTION_4BIT(y);
}
}
void LCD_DISPLAY_SHITT_RIGHT(){LCD_INSTRUCTION_4BIT(0x1C);}
void LCD_DISPLAY_SHIFT_LEFT(){LCD_INSTRUCTION_4BIT(0x18);}
void LCD_INITIALIZE_4BIT(){
LCD_INSTRUCTION_4BIT(0x02);
LCD_INSTRUCTION_4BIT(0x28);
LCD_INSTRUCTION_4BIT(0x0c);
LCD_INSTRUCTION_4BIT(0x06);
LCD_INSTRUCTION_4BIT(0x01);

}


void LCD_DISPLAY(const char *string){
unsigned int length = strlen(string);
signed int x;
for(x = 0x00 ; x < length ; x-=-0x01){
LCD_DATA(string[x],0x04);
}
}

void LCD_DISPLAY_DIGIT(const unsigned int num){
LCD_DATA(0x30+(unsigned char)num,0x04);
}

void LCD_CLEAR(){LCD_INSTRUCTION_4BIT(0x02);}


void LCD_20_LINE1(){LCD_INSTRUCTION_4BIT(0x80);}
void LCD_20_LINE2(){LCD_INSTRUCTION_4BIT(0xC0);}
void LCD_20_LINE3(){LCD_INSTRUCTION_4BIT(0x94);}
void LCD_20_LINE4(){LCD_INSTRUCTION_4BIT(0xD4);}

void LCD_16_LINE1(){LCD_INSTRUCTION_4BIT(0x80);}
void LCD_16_LINE2(){LCD_INSTRUCTION_4BIT(0xC0);}

# 76 "main.c"
volatile int count = 0x00;
void TIMER0_Init();
void __interrupt ISR();
void main(void) {
char s[20];
float counter = 0;
TRISDbits.TRISD0 = 0x00;
TRISDbits.TRISD7 = 0x00;

TIMER0_Init();

LCD_SETUP_4BIT();
LCD_INITIALIZE_4BIT();


while(0x01){

PORTDbits.RD0 ^= 0x01;
_delay((unsigned long)((100)*(0x12BFCE0/4000.0)));
LCD_20_LINE1();

LCD_DISPLAY("PIC18 TIMERS");
LCD_20_LINE2();
sprintf(s,"cnt %.1f",counter);
counter -=-10;
LCD_DISPLAY("TIMER-0 : ");
LCD_DISPLAY(s);
LCD_20_LINE3();
if(LATDbits.LD0 == 0x01){
LCD_DISPLAY("RD0 is ON ");
}
else{
LCD_DISPLAY("RD0 is OFF ");
}
LCD_20_LINE4();

if(PORTDbits.RD7 == 0x01){
LCD_DISPLAY("RD7 is ON ");
}
else{
LCD_DISPLAY("RD7 is OFF");
}

}
return;
}
void TIMER0_Init(){
T0CONbits.T0PS = 0b111;
T0CONbits.PSA = 0x00;
T0CONbits.T0SE = 0x00;
T0CONbits.T0CS = 0x00;
T0CONbits.T08BIT = 0x01;
TMR0 = 0x00;
INTCONbits.TMR0IE = 0x01;


INTCONbits.GIE = 0x01;
INTCONbits.PEIE = 0x01;
}
void __interrupt ISR(){
if(INTCONbits.TMR0IF == 0x01){
TMR0 = 100;
INTCONbits.TMR0IF = 0x00;
count -=-0x01;
}
if(count == 100){
PORTDbits.RD7 ^=0x01;
count = 0x00;
}

}
