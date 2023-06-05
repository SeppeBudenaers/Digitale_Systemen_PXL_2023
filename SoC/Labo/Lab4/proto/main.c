#include "cyhal.h"
#include "cybsp.h"

#define NUM_CHANNELS 2

static cyhal_adc_channel_t adc_channels[NUM_CHANNELS];

static void adc_continuous_event_handler(void* arg, cyhal_adc_event_t event)
{
    CY_UNUSED_PARAMETER(arg);
    CY_UNUSED_PARAMETER(event);
    /* Note: arg is configured below to be a pointer to the adc object */
    if(0u != (event & CYHAL_ADC_EOS))
    {
        for(int i = 0; i < NUM_CHANNELS; ++i)
        {
            /* Perform application-specific processing of the ADC result */
            process_adc_result(i, cyhal_adc_read(&adc_channels[i]));
            cyhal_gpio_toggle(P1_1);
            cyhal_system_delay_ms(100);

        }
    }
}

void snippet_cyhal_adc_continuous_read(void)
{
    cyhal_adc_t adc_obj;
    /* Initialize the each member of the adc_channels array as shown in Snippet 2 */
    cyhal_adc_config_t config = { /* Other configuration options are omitted here for clarity */ .continuous_scanning = true };
    /* Register a callback and set the callback argument to be a pointer to the adc object
     * so that we can easily reference it in the event handler. */
     cyhal_adc_register_callback(&adc_obj, &adc_continuous_event_handler, &adc_obj);
    /* Subscribe to the end of scan event so that we we can process the results as each scan completes*/
    cyhal_adc_enable_event(&adc_obj, CYHAL_ADC_EOS, CYHAL_ISR_PRIORITY_DEFAULT, true);
    /* Call the ADC configure function to begin continuous scanning */
    cyhal_adc_configure(&adc_obj, &config);
}

int main(void)
{
	cybsp_init();
	__enable_irq();
    cy_rslt_t rslt;
    cyhal_gpio_init(P1_1, CYHAL_GPIO_DIR_OUTPUT,CYHAL_GPIO_DRIVE_STRONG , 0);
    cyhal_adc_t adc_obj;
    cyhal_adc_channel_t adc_chan_0_obj;
    cyhal_adc_channel_t adc_chan_1_obj;
    /* 32-bit ADC conversion result */
    int32_t adc_out_0;
    int32_t adc_out_1;
    /* Use the same configuration for both channels */
    const cyhal_adc_channel_config_t channel_config = { .enable_averaging = false, .min_acquisition_ns = 220, .enabled = true };
    /* Initialize ADC. The ADC block which can connect to pin 10[0] is selected */
    rslt = cyhal_adc_init(&adc_obj, P10_0, NULL);
    /* Initialize a channel to scan P10_0 with the default vminus */
    rslt = cyhal_adc_channel_init_diff(&adc_chan_0_obj, &adc_obj, P10_0, CYHAL_ADC_VNEG, &channel_config);
    /* Initialize a differential channel for the pair of P10_2 and P10_3 */
    rslt = cyhal_adc_channel_init_diff(&adc_chan_1_obj, &adc_obj, P10_2, P10_3, &channel_config);
    /* Read the ADC conversion results for both channels. Repeat as necessary. */
    adc_out_0 = cyhal_adc_read(&adc_chan_0_obj);
    adc_out_1 = cyhal_adc_read(&adc_chan_1_obj);

    for (;;)
    {
    }
}
