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
#define _XTAL_FREQ 0x12BFCE0
#define _4bit_mode 0x04


//========[control pins]=========
#define RS PORTJbits.RJ1        //yello wire
//#define RW PORTBbits.RB3        //orange wire
#define EN PORTJbits.RJ0 
//========[D0 - D7 for data]============= 
#define D4 TRISFbits.RF0 
#define D5 TRISFbits.RF1 
#define D6 TRISHbits.RH4 
#define D7 TRISHbits.RH5 


void LCD_SETUP_4BIT(){
    //====================[Setup Bits]=======================
    //=======================================================
	TRISJbits.TRISJ0 = 0x00;
	TRISJbits.TRISJ1 = 0x00;
	//TRISBbits.TRISB3 = 0x00;
	//=======================================================
	TRISFbits.TRISF0 = 0x00;
	TRISFbits.TRISF1 = 0x00;
	TRISHbits.TRISH4 = 0x00;
    //TRISCbits.TRISC2 = 0x00;
	TRISHbits.TRISH5 = 0x00;
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
		//RW = 0x00;
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
		//RW = 0x00;
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
		//RW = 0x00;
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
		//RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//=======================================	
}
void LCD_SET_CURSOR(char a, char b){
    char temp,z,y;
    if(a== 1){
        temp = 0x80 + b - 1; //80H is used to move the curser
        z = temp>>4; //Lower 8-bits
        y = temp & 0x0F; //Upper 8-bits
        LCD_INSTRUCTION_4BIT(z); //Set Row
        LCD_INSTRUCTION_4BIT(y); //Set Column
    }

    else if(a== 2)
    {
        temp = 0xC0 + b - 1;
        z = temp>>4; //Lower 8-bits
        y = temp & 0x0F; //Upper 8-bits
        LCD_INSTRUCTION_4BIT(z); //Set Row
        LCD_INSTRUCTION_4BIT(y); //Set Column
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
	unsigned int length =  strlen(string);
	signed int x;
	for(x = 0x00 ;  x < length ; x-=-0x01){
		LCD_DATA(string[x],_4bit_mode);
	}	
}

void LCD_DISPLAY_DIGIT(float num){
    char s[20];
	signed int x;
    sprintf(s,"%.0f",num);
	LCD_DISPLAY(s);
}

void LCD_DISPLAY_HEX(int num){
    char s[20];
	signed int x;
    sprintf(s,"0x%X",num);
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

