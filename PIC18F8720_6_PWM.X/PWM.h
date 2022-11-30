
    
#define _XTAL_FREQ 0x12BFCE0
#define TMR2PRESCALE 16
long Frequency;

int PWM_MAX_DUTY(){
   return(_XTAL_FREQ/(Frequency*TMR2PRESCALE));
}

void PWM1_INITIALIZE(long frequency){
  PR2 = (_XTAL_FREQ/(Frequency*4*TMR2PRESCALE)) - 1;
  Frequency = frequency;
}

void PWM2_INITIALIZE(long frequency){
  PR2 = (_XTAL_FREQ/(Frequency*4*TMR2PRESCALE)) - 1;
  Frequency = frequency;
}
void PWM3_INITIALIZE(long frequency){
  PR2 = (_XTAL_FREQ/(Frequency*4*TMR2PRESCALE)) - 1;
  Frequency = frequency;
}
void PWM1_DUTY(unsigned int duty){
  
    if(duty<1024){  
    duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
    CCP1CONbits.DC1B1 = duty && 2;
    CCP1CONbits.DC1B0 = duty && 1;
    CCPR1L = duty>>2;
  }
}

void PWM2_DUTY(unsigned int duty){
    
  if(duty<1024){  
    duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
    CCP2CONbits.DC2B1 = duty && 2;
    CCP2CONbits.DC2B0 = duty && 1;
    CCPR2L = duty>>2;
  } 
}

void PWM3_Duty(unsigned int duty){
    
    if(duty < 1024){
        duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
        CCP3CONbits.DC3B1 = duty && 2;
        CCP3CONbits.DC3B0 = duty && 1;
        CCPR3L = duty>>2;
               
    }
}

void PWM1_START(){
    CCP1CONbits.CCP1M0 = 0x01;
    CCP1CONbits.CCP1M1 = 0x01;
    CCP1CONbits.CCP1M2 = 0x01;
    CCP1CONbits.CCP1M3 = 0x01;
#if TMR2PRESCALE == 0x01
    T2CONbits.T2CKPS0 = 0x00;
    T2CONbits.T2CKPS1 = 0x00;
#elif TMR2PRESCALE == 0x04
    T2CONbits.T2CKPS0 = 0x01;
    T2CONbits.T2CKPS1 = 0x00;
#elif TMR2PRESCALE == 16
    T2CONbits.T2CKPS0 = 0x01;
    T2CONbits.T2CKPS1 = 0x01;
#endif
    T2CONbits.TMR2ON = 0x01;
    TRISCbits.TRISC2 = 0x00;
}

void PWM1_STOP(){
    CCP1CONbits.CCP1M2 = 0x00;
    CCP1CONbits.CCP1M3 = 0x00;
}

void PWM2_START(){
    CCP2CONbits.CCP2M0 = 0x01;
    CCP2CONbits.CCP2M1 = 0x01;
    CCP2CONbits.CCP2M2 = 0x01;
    CCP2CONbits.CCP2M3 = 0x01;
#if TMR2PRESCALE == 0x01
    T2CONbits.T2CKPS0 = 0x00;
    T2CONbits.T2CKPS1 = 0x00;
#elif TMR2PRESCALE == 0x04
    T2CONbits.T2CKPS0 = 0x01;
    T2CONbits.T2CKPS1 = 0x00;
#elif TMR2PRESCALE == 16
    T2CONbits.T2CKPS0 = 0x01;
    T2CONbits.T2CKPS1 = 0x01;
#endif
    T2CONbits.TMR2ON = 0x01;
    TRISEbits.TRISE7 = 0x00;
    //for RC1 -> CCP2MUX ON
    //for RE7 -> CCP2MUX OFF
}

void PWM2_STOP(){
    CCP2CONbits.CCP2M2 = 0x00;
    CCP2CONbits.CCP2M3 = 0x00;
}

void PWM3_START(){
    CCP3CONbits.CCP3M0 = 0x01;
    CCP3CONbits.CCP3M1 = 0x01;
    CCP3CONbits.CCP3M2 = 0x01;
    CCP3CONbits.CCP3M3 = 0x01;
#if TMR2PRESCALE == 0x01
    T2CONbits.T2CKPS0 = 0x00;
    T2CONbits.T2CKPS1 = 0x00;
#elif TMR2PRESCALE == 0x04
    T2CONbits.T2CKPS0 = 0x01;
    T2CONbits.T2CKPS1 = 0x00;
#elif TMR2PRESCALE == 16
    T2CONbits.T2CKPS0 = 0x01;
    T2CONbits.T2CKPS1 = 0x01;
#endif
    T2CONbits.TMR2ON = 0x01;
    TRISGbits.TRISG0 = 0x00;
    
}
void PWM3_STOP(){
    CCP3CONbits.CCP3M2 = 0x01;
    CCP3CONbits.CCP3M3 = 0x01;
}

void PWM_SETUP(){
  PWM1_INITIALIZE(5000);
  PWM2_INITIALIZE(5000);
  PWM3_INITIALIZE(5000);
  PWM1_DUTY(0);
  PWM2_DUTY(0);
  PWM3_Duty(0);
  PWM1_START();
  PWM2_START();
  PWM3_START();
}
