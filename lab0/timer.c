/* 
 * File:   timer.c
 * Author: gvanhoy
 *
 * Created on August 27, 2015, 3:26 PM
 */

#include <xc.h>
#include "timer.h"

void initTimer1(){
    TMR1 = 0;// clear TMR1
    PR1 = 2442;// Initialize PR1
    T1CONbits.TCKPS = 3; // Initialize pre-scalar
    IEC0bits.T1IE = 1;// Enable the interrupt
    IFS0bits.T1IF = 0;// Put the flag down
    IPC1bits.T1IP = 7;// Configure the Interrupt Priority
    T1CONbits.ON = 1;// Turn the timer on
    T1CONbits.TCS = 0;//Setting the oscillator
}