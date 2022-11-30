#include <stdio.h>
#include <stdlib.h>

unsigned char EEPROM_RD(unsigned char address){
    
    EEADR = address;
    EECON1bits.WREN = 0x00;
    EECON1bits.EEPGD = 0x00;
    EECON1bits.RD = 0x01;
    return (EEDATA);
}

void EEPROM_WR(unsigned char address , unsigned char data){
    
    EEADR = address;
    EEDATA = data;
    
    EECON1bits.EEPGD = 0x00;
    EECON1bits.CFGS = 0x00;
    EECON1bits.WREN = 0x01;
    INTCONbits.GIE = 0x00;
    
    EECON2 = 0x55;
    EECON2 = 0xAA;
    
    EECON1bits.WR = 0x01;
    INTCONbits.GIE = 0x01;
    while(PIR2bits.EEIF == 0x00);
    PIR2bits.EEIF = 0x00;
    
}