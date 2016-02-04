/* 
 * File:   switch.c
 * Author: gvanhoy
 *
 * Created on August 27, 2015, 3:26 PM
 */

#include <xc.h>
#include "switch.h"

//Initialize Switch
void initSwitch1(){
    TRISDbits.TRISD6 = 1;
    CNPUDbits.CNPUD6 = 1;
}