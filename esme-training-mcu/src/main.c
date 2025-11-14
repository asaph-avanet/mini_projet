
/**
 ***********************************************************************************************************************
 * Company: Esme Sudria
 * Project: Mini Projet MCU ? Groupe 10
 *
 ***********************************************************************************************************************
 * @file      MCP9700.c
 *
 * @author    Fadel AW
 * @date      07/11/2025
 *
 * @version   1.0.0
 *
 * @brief     R?action applicative ? l?interruption du bouton S1
 ***********************************************************************************************************************
 */

#include <stdio.h>
#include "Common.h"
#include "GPIO.h"
#include "AppManager.h"

/*********************************/
/* HARDWARE INCLUDES             */
/*********************************/
#include "ISR.h"
#include "CLOCK.h"
#include "ADC.h"
#include "TIMER.h"
#include "EUSART.h"
#include "I2CM.h"

/*********************************/
/* DRIVER INCLUDES               */
/*********************************/
#include "LCD.h"

/*********************************/
/* APPLICATION INCLUDES          */
/*********************************/

void main(void)
{
    #pragma config WDTE = OFF
    #pragma config LVP  = ON

    /* Active les interruptions */
    ISR_GlobalInterruptEnable();
    ISR_PeripheralInterruptEnable();

    /* Initialisation syst?me */
    CMN_vidInitialize();

    /********* HARDWARE *********/
    CLOCK_vidInitialize();
    EUSART_vidInitialize();
    ADC_vidInitialize();
    TIM0_vidInitialize();
    I2CM_vidInitalize();
    //LCD_vidInitialize();

    /********* APPLICATION *********/
    GPIO_Init();
    APPM_vidInit();

    CMN_vidEndInit();

    while(1)
    {
        APPM_vidStart();
    }
    CMN_abortAll();
}
/*--------------------------------------------------------------------------------------------------------------------*/
