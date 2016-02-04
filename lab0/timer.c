/* 
 * File:   timer.c
 * Author: gvanhoy
 *
 * Created on August 27, 2015, 3:26 PM
 */

#include <xc.h>
#include "timer.h"

void initTimer1(){
    TMR2 = 0;// clear TMR1
    PR1 = 39062;// Initialize PR1
    T1CONbits.TCKPS = 3; // Initialize pre-scalar
    IEC0bits.T1IE = 1;// Enable the interrupt
    IFS0bits.T1IF = 0;// Put the flag down
    IPC1bits.T1IP = 7;// Configure the Interrupt Priority
    T1CONbits.ON = 1;// Turn the timer on
    T1CONbits.TCS = 0;//Setting the oscillator
}

initTimer2(){
    TMR2 = 0;
    T2CONbits.TCKPS = 0;
    T2CONbits.TCS = 0;
    IFS0bits.T2IF = 0;
}

delayMs(unsigned int delay){
    TMR2 = 0;
    PR2 = delay*624;
    IFS0bits.T2IF = 0;
    T2CONbits.ON = 1;
    while(IFS0bits.T2IF == 0);
    T2CONbits.ON = 0;
}

void resetTimer1(){
    TMR1 = 0;
    T1CONbits.ON = 0;
}
