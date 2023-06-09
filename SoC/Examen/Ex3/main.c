/*******************************************************************************
* File Name:   main.c
*
* Description: This is the source code for the Empty Application Example
*              for ModusToolbox.
*
* Related Document: See README.md
*
*
********************************************************************************
* Copyright 2021-2023, Cypress Semiconductor Corporation (an Infineon company) or
* an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
*
* This software, including source code, documentation and related
* materials ("Software") is owned by Cypress Semiconductor Corporation
* or one of its affiliates ("Cypress") and is protected by and subject to
* worldwide patent protection (United States and foreign),
* United States copyright laws and international treaty provisions.
* Therefore, you may use this Software only as provided in the license
* agreement accompanying the software package from which you
* obtained this Software ("EULA").
* If no EULA applies, Cypress hereby grants you a personal, non-exclusive,
* non-transferable license to copy, modify, and compile the Software
* source code solely for use in connection with Cypress's
* integrated circuit products.  Any reproduction, modification, translation,
* compilation, or representation of this Software except as specified
* above is prohibited without the express written permission of Cypress.
*
* Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND,
* EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress
* reserves the right to make changes to the Software without notice. Cypress
* does not assume any liability arising out of the application or use of the
* Software or any product or circuit described in the Software. Cypress does
* not authorize its products for use in any products where a malfunction or
* failure of the Cypress product may reasonably be expected to result in
* significant property damage, injury or death ("High Risk Product"). By
* including Cypress's product in a High Risk Product, the manufacturer
* of such system or application assumes all risk of such use and in doing
* so agrees to indemnify Cypress against all liability.
*******************************************************************************/

/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

/*******************************************************************************
* Macros
*******************************************************************************/


/*******************************************************************************
* Global Variables
*******************************************************************************/


/*******************************************************************************
* Function Prototypes
*******************************************************************************/


/*******************************************************************************
* Function Definitions
*******************************************************************************/

/*******************************************************************************
* Function Name: main
********************************************************************************
* Summary:
* This is the main function for CPU. It...
*    1.
*    2.
*
* Parameters:
*  void
*
* Return:
*  int
*
*******************************************************************************/
int32_t adc_out;
cyhal_adc_t         adc_obj;
cyhal_adc_channel_t adc_chan_0_obj;
cyhal_pwm_t pwm_obj;

int main(void)
{
	 cybsp_init();
   __enable_irq();

   cyhal_pwm_init(&pwm_obj, P0_3, NULL);
   /* Set a duty cycle of 50% and frequency of 1Hz */
   cyhal_pwm_set_duty_cycle(&pwm_obj, 100, 10);
   /* Start the PWM output */
   cyhal_pwm_start(&pwm_obj);

   cyhal_adc_t adc_obj;
   cyhal_adc_channel_t adc_chan_0_obj;
   /* ADC conversion result. */
   int32_t adc_out;
   /* Initialize ADC. The ADC block which can connect to pin 10[0] is selected */
   cyhal_adc_init(&adc_obj, P10_0, NULL);
   /* Initialize ADC channel, allocate channel number 0 to pin 10[0] as this is the first channel initialized */
   const cyhal_adc_channel_config_t channel_config = { .enable_averaging = false, .min_acquisition_ns = 220, .enabled = true };
   cyhal_adc_channel_init_diff(&adc_chan_0_obj, &adc_obj, P10_0, CYHAL_ADC_VNEG, &channel_config);
   /* Read the ADC conversion result for corresponding ADC channel. Repeat as necessary. */
   adc_out = cyhal_adc_read(&adc_chan_0_obj);
   int pwm_percent;
   if (adc_out >= 0)
              {
              	pwm_percent = 50 - ((adc_out*100)/(2047*2)) ;
              	cyhal_pwm_set_duty_cycle(&pwm_obj,pwm_percent, 10);
              }
              else
              {
              	pwm_percent = (adc_out*100)/(-2048*2) + 50;
              	cyhal_pwm_set_duty_cycle(&pwm_obj,pwm_percent, 10);
              }
   cyhal_system_delay_ms(2000);
   cyhal_syspm_deepsleep(); //zie figuur robust op blackboard je zit in retention maar dat kan geen kwaad voor deze opdracht
    for (;;)
    {
    }
}

/* [] END OF FILE */
