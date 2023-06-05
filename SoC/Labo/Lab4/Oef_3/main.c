/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"
#define NUM_CHANNELS 1

 int32_t adc_out;

 cyhal_adc_channel_t adc_chan_0_obj;
 float pwm = 0;

static void adc_continuous_event_handler(void* arg, cyhal_adc_event_t event)
{
        	adc_out = cyhal_adc_read(&adc_chan_0_obj);
}


int main(void)
{
	 	 cybsp_init();
	    __enable_irq();

	    cyhal_pwm_t pwm_obj;
	    cyhal_adc_t adc_obj;

	    cyhal_gpio_init(P1_1, CYHAL_GPIO_DIR_OUTPUT,CYHAL_GPIO_DRIVE_STRONG , 0);
	    /* Use the same configuration for both channels */
	    const cyhal_adc_channel_config_t channel_config = { .enable_averaging = false, .min_acquisition_ns = 220, .enabled = true };
	    /* Initialize ADC. The ADC block which can connect to pin 10[0] is selected */
	    cyhal_adc_init(&adc_obj, P10_0, NULL);
	    /* Initialize a channel to scan P10_0 with the default vminus */
	    cyhal_adc_channel_init_diff(&adc_chan_0_obj, &adc_obj, P10_0, CYHAL_ADC_VNEG, &channel_config);
	    /* Initialize the each member of the adc_channels array as shown in Snippet 2 */
	    cyhal_adc_config_t config = { /* Other configuration options are omitted here for clarity */ .continuous_scanning = true };
	    /* Register a callback and set the callback argument to be a pointer to the adc object
	    * so that we can easily reference it in the event handler. */
	    cyhal_adc_register_callback(&adc_obj, &adc_continuous_event_handler, &adc_obj);
	    /* Subscribe to the end of scan event so that we we can process the results as each scan completes*/
	        cyhal_adc_enable_event(&adc_obj, CYHAL_ADC_EOS, CYHAL_ISR_PRIORITY_DEFAULT, true);
	        /* Call the ADC configure function to begin continuous scanning */
	      cyhal_adc_configure(&adc_obj, &config);


    for (;;)
    {
    	if (adc_out >= 0 ){
    	cyhal_gpio_toggle(P1_1);
    	cyhal_system_delay_ms(100);
    	pwm = (adc_out/(2047*2)) + 50;
    	cyhal_pwm_set_duty_cycle(&pwm_obj, pwm, 1000);
    	}
    	else
    	{
    	   	cyhal_gpio_toggle(P1_1);
    	    cyhal_system_delay_ms(100);
    	    pwm = ((adc_out * (-1) )/(2047*2));
    	    cyhal_pwm_set_duty_cycle(&pwm_obj, pwm, 1000);
    	}
    	//cyhal_pwm_set_duty_cycle(&pwm_obj, pwm, 1000); */
    }
}
/* [] END OF FILE */
