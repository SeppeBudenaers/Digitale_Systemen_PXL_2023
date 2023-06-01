#include "cyhal.h"
#include "cybsp.h"

#define ADC_VPLUS1 (P10_0)

int main(void)
{
    cy_rslt_t           rslt;
	cyhal_adc_t         adc_obj;
	cyhal_adc_channel_t adc_chan_0_obj;

	int32_t adc_out;

    cybsp_init();

    __enable_irq();

	rslt = cyhal_adc_init(&adc_obj, ADC_VPLUS1, NULL);

	const cyhal_adc_channel_config_t channel_config =
	   { .enable_averaging = false, .min_acquisition_ns = 220, .enabled = true };

	rslt = cyhal_adc_channel_init_diff(&adc_chan_0_obj, &adc_obj, ADC_VPLUS1, CYHAL_ADC_VNEG, &channel_config);

	// Read the ADC conversion result for corresponding ADC channel. Repeat as necessary.
	adc_out = cyhal_adc_read(&adc_chan_0_obj);

	// Release ADC and channel objects when no longer needed
	cyhal_adc_channel_free(&adc_chan_0_obj);
	cyhal_adc_free(&adc_obj);

    for (;;)
    {

    }
}
