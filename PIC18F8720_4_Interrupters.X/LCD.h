/* 
 * File:   LCD.h
 * Author: www
 *
 * Created on September 30, 2022, 11:26 PM
 */

#ifndef LCD_H
#define	LCD_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdlib.h>
#define _XTAL_FREQ 0x12BFCE0
#define _4bit_mode 0x04


//========[control pins]=========
#define RS PORTJbits.RJ1        //yello wire
#define RW PORTBbits.RB3        //orange wire
#define EN PORTJbits.RJ0 
//========[D0 - D7 for data]============= 
#define D4 TRISCbits.RC0 
#define D5 TRISCbits.RC1 
#define D6 TRISCbits.RC2 
#define D7 TRISCbits.RC3 


void LCD_SETUP_4BIT(){
    //====================[Setup Bits]=====================
    //Interrupt operation registers
    //Capture/Compare/PWM - CCPx

    
    CCP2CONbits.CCP2M0 = 0x00;
    CCP2CONbits.CCP2M1 = 0x00;
    CCP2CONbits.CCP2M2 = 0x00;
    CCP2CONbits.CCP2M3 = 0x00;
    
    //  Capture/Compare/PWM - CCPx
    //  MSSP module is operated in SPI or I2C mode
    //  Timer 1 control register
    CCP1CONbits.CCP1M0 = 0x00;
    CCP1CONbits.CCP1M1 = 0x00;
    CCP1CONbits.CCP1M2 = 0x00;
    CCP1CONbits.CCP1M3 = 0x00;
    
    SSPCON1bits.SSPEN = 0x00;
    RCSTA1bits.SPEN = 0x00;
    RCSTA2bits.SPEN2 = 0x00;
    
    T1CONbits.T1OSCEN = 0x00;
    //=======================================================
	TRISJ0 = 0x00;
	TRISJ1 = 0x00;
	TRISB3 = 0x00;
	//=======================================================
	TRISC0 = 0x00;
	TRISC1 = 0x00;
	TRISC2 = 0x00;
	TRISC3 = 0x00;
}



void LCD_DATA(unsigned char data, int mode){
	unsigned char _data = data;
	unsigned int _4bit_[_4bit_mode];
	if(mode == 0x04){
		_data = _data>>0x04;
		for(int x =0x00; x < _4bit_mode; x-=-0x01){
			_4bit_[x] = (_data & (0x01<<x))>>x;
		}
			D4 = (char)_4bit_[0x00];
			D5 = (char)_4bit_[0x01];
			D6 = (char)_4bit_[0x02];
			D7 = (char)_4bit_[0x03];
		RS = 0x01;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//=======================================
		_data = data;
		for(int x = 0x00; x< _4bit_mode; x-=-0x01){
			_4bit_[x] = (_data & (0x01<<x))>>x;
		}
			D4 = (char)_4bit_[0x00];
			D5 = (char)_4bit_[0x01];
			D6 = (char)_4bit_[0x02];
			D7 = (char)_4bit_[0x03];
		RS = 0x01;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//=======================================
	}
}

void LCD_INSTRUCTION_4BIT(unsigned char instruction){
	int _4bit_[_4bit_mode];
	unsigned char data = instruction;
		data = data>>0x04;
		for(int x =0x00; x < _4bit_mode; x-=-0x01){
			_4bit_[x] = (data & (0x01<<x))>>x;
		}
			D4 = (char)_4bit_[0x00];
			D5 = (char)_4bit_[0x01];
			D6 = (char)_4bit_[0x02];
			D7 = (char)_4bit_[0x03];
		RS = 0x00;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//========================================
		data = instruction;
		for(int x = 0x00; x< _4bit_mode; x-=-0x01){
			_4bit_[x] = (data & (0x01<<x))>>x;
		}
			D4 = (char)_4bit_[0x00];
			D5 = (char)_4bit_[0x01];
			D6 = (char)_4bit_[0x02];
			D7 = (char)_4bit_[0x03];
		RS = 0x00;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//=======================================	
}

void LCD_INITIALIZE_4BIT(){
	LCD_INSTRUCTION_4BIT(0x02);
	LCD_INSTRUCTION_4BIT(0x28);
	LCD_INSTRUCTION_4BIT(0x0c);
	LCD_INSTRUCTION_4BIT(0x06);
	LCD_INSTRUCTION_4BIT(0x01);

}


void LCD_DISPLAY(const char *string){
	unsigned int length =  strlen(string);
	signed int x;
	for(x = 0x00 ;  x < length ; x-=-0x01){
		LCD_DATA(string[x],_4bit_mode);
	}	
}

void LCD_DISPLAY_DIGIT(float num){
    char s[20];
	signed int x;
    sprintf(s,"%.2f",num);
	LCD_DISPLAY(s);
}

void LCD_CLEAR(){LCD_INSTRUCTION_4BIT(0x02);}

//=======================[20x4 LCD Lines]=======================
void LCD_20_LINE1(){LCD_INSTRUCTION_4BIT(0x80);}
void LCD_20_LINE2(){LCD_INSTRUCTION_4BIT(0xC0);}
void LCD_20_LINE3(){LCD_INSTRUCTION_4BIT(0x94);}
void LCD_20_LINE4(){LCD_INSTRUCTION_4BIT(0xD4);}
//=======================[16x2 LCD Lines]=======================
void LCD_16_LINE1(){LCD_INSTRUCTION_4BIT(0x80);}
void LCD_16_LINE2(){LCD_INSTRUCTION_4BIT(0xC0);}


#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */

