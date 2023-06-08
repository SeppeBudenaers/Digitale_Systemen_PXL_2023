/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

int32_t adc_out;

int main(void)
{
	 	 cybsp_init();
	    __enable_irq();
	   	cy_rslt_t rslt;
	    cyhal_adc_t adc_obj;
	    cyhal_adc_channel_t adc_chan_0_obj;
	    /* ADC conversion result. */

	    /* Initialize ADC. The ADC block which can connect to pin 10[0] is selected */
	    cyhal_gpio_init(P1_1, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, 0u);
	    rslt = cyhal_adc_init(&adc_obj, P10_0, NULL);
	    /* Initialize ADC channel, allocate channel number 0 to pin 10[0] as this is the first channel initialized */
	    const cyhal_adc_channel_config_t channel_config = { .enable_averaging = false, .min_acquisition_ns = 220, .enabled = true };
	    rslt = cyhal_adc_channel_init_diff(&adc_chan_0_obj, &adc_obj, P10_0, CYHAL_ADC_VNEG, &channel_config);
	    /* Read the ADC conversion result for corresponding ADC channel. Repeat as necessary. */
	    adc_out = cyhal_adc_read(&adc_chan_0_obj);

    for (;;)
    {

		cyhal_system_delay_ms(500);
    	if (adc_out > 0){
    		cyhal_gpio_write(P1_1, 0);
    	}
    	else{
    		cyhal_gpio_write(P1_1, 1);
    	}
    }
}

/* [] END OF FILE */
