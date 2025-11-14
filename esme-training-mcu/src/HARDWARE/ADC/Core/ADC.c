/**
 ***********************************************************************************************************************
 * Company: Esme Sudria
 * Project: Projet Esme
 *
 ***********************************************************************************************************************
 * @file      ADC.c
 *
 * @author    Jean DEBAINS
 * @date      Wednesday, January 31, 2024.
 *
 * @version   0.0.0
 *
 * @brief     ADC Hardware core part
 * @details   Module in charge of the management of the ADC peripheral
 *
 * @remark    Coding Language: C
 *
 * @copyright Copyright (c) 2024 This software is used for education proposal
 *
 ***********************************************************************************************************************
 */



/**********************************************************************************************************************/
/* INCLUDE FILES                                                                                                      */
/**********************************************************************************************************************/
#include "Common.h"
#include "CLOCK.h"
#include "TIMER.h"
#include "ISR.h"
#include "ADC.h"


/**********************************************************************************************************************/
/* CONSTANTS, MACROS                                                                                                  */
/**********************************************************************************************************************/
/**
 * @brief Defines the channel used to put the ADC in the GND
 * @details AVSS (Analog Ground)
 */
#define ADC_CHANNEL_AVSS                                    0b00111100


/**********************************************************************************************************************/
/* TYPES                                                                                                              */
/**********************************************************************************************************************/



/**********************************************************************************************************************/
/* PRIVATE VARIABLES                                                                                                  */
/**********************************************************************************************************************/



/**********************************************************************************************************************/
/* PRIVATE FUNCTIONS PROTOTYPES                                                                                       */
/**********************************************************************************************************************/



/**********************************************************************************************************************/
/* PRIVATE FUNCTION DEFINITIONS                                                                                       */
/**********************************************************************************************************************/



/**********************************************************************************************************************/
/* PUBLIC FUNCTION DEFINITIONS                                                                                        */
/**********************************************************************************************************************/
void ADC_vidInitialize(void)
{
  CMN_assert(ADC_CONFIG_REG_ADDRESS_TRIS  != 0);
  CMN_assert(ADC_CONFIG_REG_ADDRESS_ANSEL != 0);
  CMN_assert(ADC_CONFIG_CHANNEL_PORT < CHAR_BIT);

  CMN_set16BitsMaskReg(ADC_CONFIG_REG_ADDRESS_TRIS,  (1 << ADC_CONFIG_CHANNEL_PORT));
  CMN_set16BitsMaskReg(ADC_CONFIG_REG_ADDRESS_ANSEL, (1 << ADC_CONFIG_CHANNEL_PORT));

  ADREFbits.ADNREF = 0;
  ADREFbits.ADPREF = 0;

  ADCON0  = _ADCON0_ADON_MASK; // Enable ADCC module
  ADCON0 |= _ADCON0_ADCS_MASK; // Select FRC clock
  ADCON0 |= _ADCON0_ADFM_MASK; // Result right justified

  // Connect the ADC channel to the AVSS (Analog Ground):
  ADPCH = ADC_CHANNEL_AVSS;
}

uint16_t ADC_u16ReadValue()
{
    // --- 1. Configuration de la broche (RA0) ---
    
    // Mettre RA0 en mode Entrée (le potentiomètre envoie un signal)
    TRISAbits.TRISA0 = 1;
    
    // Désactiver le mode digital pour RA0 (passer en mode Analogique)
    ANSELAbits.ANSELA0 = 1;

    // --- 2. Configuration du module ADC ---

    // Sélectionner le canal AN0 (qui est physiquement RA0)
    ADPCH = 0x00; 

    // Sélectionner la source d'horloge ADC (ex: FOSC/64, un choix sûr)
    ADCLK = 0b001111;

    // Configurer les références de tension
    ADREFbits.ADPREF = 0b00; // VREF+ est VDD (tension d'alimentation)
    ADREFbits.ADNREF = 0;   // VREF- est VSS (GND)

    // --- 3. Configuration du format (CRUCIAL POUR 8 BITS) ---
    
    // Justification à gauche (ADFM = 0).
    // Sur ce PIC, l'ADC a 12 bits. En justifiant à gauche,
    // les 8 bits de poids fort (MSB) se retrouvent dans ADRESH,
    // et les 4 bits de poids faible (LSB) dans ADRESL.
    ADCON0bits.ADFM = 0; 
    
    // Allumer le module ADC
    ADCON0bits.ADON = 1;
    
    ADCON0bits.ADGO = 1;
    
    return ADRESH;
}
/*--------------------------------------------------------------------------------------------------------------------*/
ADC_tenuStatus ADC_enuGetRawValue(uint16_t * const kpu16AdcRawValue, const uint32_t ku32TimeoutMs)
{
  ADC_tenuStatus enuStatus     = ADC_eSTATUS_NO_OK;
  uint32_t       u32TimeoutIdx = 0;

  // Connect the ADC channel associated of the ADC ID:
  ADPCH = ADC_CONFIG_CHANNEL_ADPCH;

  // Start conversion:
  ADCON0 |= _ADCON0_ADGO_MASK;

  // Wait until either the ADC conversion is finished or the timeout:
  while((ADCON0 & _ADCON0_ADGO_MASK) && (u32TimeoutIdx < ku32TimeoutMs))
  {
    __delay_ms(CMN_1_MS);

    u32TimeoutIdx++;
  }

  if(u32TimeoutIdx >= ku32TimeoutMs)
  {
    enuStatus         = ADC_eSTATUS_CONVERSION_TIMEOUT;
    *kpu16AdcRawValue = (uint16_t)ADC_TIMEOUT_RAW_VALUE;
  }
  else
  {
    enuStatus         = ADC_eSTATUS_OK;
    *kpu16AdcRawValue = (uint16_t)((ADRESH << 8) | ADRESL);
  }

  // After the conversion re-connect the ADC channel to the AVSS (Analog Ground):
  ADPCH = ADC_CHANNEL_AVSS;

  // Stop conversion:
  ADCON0 &= ~(_ADCON0_ADGO_MASK);

  return enuStatus;
}


/*--------------------------------------------------------------------------------------------------------------------*/
