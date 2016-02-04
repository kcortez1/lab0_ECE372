/* 
 * File:   main.c
 * Author: gvanhoy
 * Description: lab 0.
 * Created on August 27, 2015, 10:14 AM
 */

#include <xc.h>
#include <sys/attribs.h>
#include "timer.h"
#include "led.h"
#include "interrupt.h"
#include "config.h"

#define ON 1
#define OFF 0
#define PRESSED 0
#define NOTPRESSED 1
#define SW1 PORTDbits.RD6

int led = 0;

//Define states of the state machine
typedef enum stateTypeEnum{
    init, previousLED, nextLED, waitForButtonPush, waitForButtonRelease
} stateType;

//Use volatile variables that change within interrupts
volatile stateType state = init;

int main() {
    
    SYSTEMConfigPerformance(10000000);    //Configures low-level system parameters for 10 MHz clock
    enableInterrupts();                   //This function is necessary to use interrupts.
    initLEDs();                           //Initialize LED
    initTimer1();                         //Initialize Timer
    initSwitch1();                        //Initialize dem switches yo  
    
    while(1){                             //Finite State Machine Implementation
        switch (state){
                case init:
                    led = 1;
                    turnOnLED(1);
                    break;
                    
                case nextLED:
                    if (led == 1)
                    {
                        led = 2;
                    }
                    
                    else if (led == 2)
                    {
                        led = 3;
                    }
                    
                    else if (led == 3)
                    {
                        led = 1;
                    }
                    
                    turnOnLED(led);
                    IFS0bits.T1IF = 0;
                    T1CONbits.TON = 0;
                    break;
                    
                case previousLED:
                     if (led == 1)
                    {
                        led = 3;
                    }
                    
                    else if (led == 2)
                    {
                        led = 1;
                    }
                    
                    else if (led == 3)
                    {
                        led = 2;
                    }
                    
                    turnOnLED(led);
                    IFS0bits.T1IF = 0;
                    T1CONbits.TON = 0;
                    break;
                    
                case waitForButtonPush:
                    break;
                    
                case waitForButtonRelease:
                    break;
        }    
    }
    return 0;
}

void __ISR(_TIMER_1_VECTOR, IPL7SRS) _T1Interrupt(){    //interrupt service routines that manage the change of states
    IFS0bits.T1IF = 0;
    if(state == init)
    {
        state = waitForButtonPush;
    }
    
    else if (state == nextLED)
    {
        state = waitForButtonPush;
    }
    
    else if (state == previousLED)
    {
        state = waitForButtonPush;
    }
    
    else if (state == waitForButtonPush)
    {
        if (SW1 == PRESSED)
        {
            TMR1CLR = 0xFFFF; //CLEAR TIMER INTERUPT FLAG
            T1CONbits.TON = 1; //START TIMER
            IFS0bits.T1IF = 0; //PUT FLAG DOWN 
            state = waitForButtonRelease;
        }
        
        else
        {
            state = waitForButtonPush;
        }
    }
    
    else if (state == waitForButtonRelease)
    {
        if (SW1 == PRESSED)//BUTTON IS STILL BEING PRESSED, CONTINUE TO WAIT
        {
            state = waitForButtonRelease;
        }
        
        else    //BUTTON HAS BEEN RELEASED
        {
            if (IFS0bits.T1IF == 1) //BUTTON WAS HELD FOR MORE THAN A SECOND
            {
                T1CONbits.TON = 0; //STOP AND CLEAR TIMER
                state = previousLED;
            }
            
            else
            {
                T1CONbits.TON = 0; //STOP AND CLEAR TIMER
                state = nextLED;
            }
        }
    }
}

void __ISR(_CHANGE_NOTICE_VECTOR, IPL7SRS) _CNInterrupt(){    //interrupt service routines that manage the change of states
    IFS1bits.CNDIF = 0;
    int i;
    i = PORTD;
    if (SW1 == NOTPRESSED){
        turnOnLED(1);
    }
    
    else{
        turnOnLED(0);
    }
}
   
