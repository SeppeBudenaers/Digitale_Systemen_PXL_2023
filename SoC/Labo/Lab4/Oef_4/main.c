/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

#define NUM_CHANNELS (2)
#define NUM_SCAN     (1)

cyhal_adc_t adc_obj;
cyhal_adc_channel_t adc_chan_0_obj;
cyhal_adc_channel_t adc_chan_1_obj;


int32_t result_arr[NUM_CHANNELS * NUM_SCAN];

static void adc_event_handler(void* arg, cyhal_adc_event_t event)
{
    /* Note: arg is configured below to be a pointer to the destination array */
    if(0u != (event & CYHAL_ADC_ASYNC_READ_COMPLETE))
    {
            int32_t* result_arr = (int32_t*)arg;
            for(int scan = 0; scan < NUM_SCAN; ++scan)
            {
                for(int channel = 0; channel < NUM_CHANNELS; ++channel)
                {
                	if(channel == 0 ){result_arr[(scan * NUM_CHANNELS)+ channel] = cyhal_adc_read(&adc_chan_0_obj);}
                	else{result_arr[(scan * NUM_CHANNELS)+ channel] = cyhal_adc_read(&adc_chan_0_obj);}
                }
            }
        }
}
int main(void)
{
    /* Initialize the device and board peripherals */
    cybsp_init();
    /* Enable global interrupts */
    __enable_irq();

    /* Use the same configuration for both channels */
    const cyhal_adc_channel_config_t channel_config = { .enable_averaging = false, .min_acquisition_ns = 220, .enabled = true };
    /* Initialize ADC. The ADC block which can connect to pin 10[0] is selected */
    cyhal_adc_init(&adc_obj, P10_0, NULL);
    /* Initialize a channel to scan P10_0 with the default vminus */
    cyhal_adc_channel_init_diff(&adc_chan_0_obj, &adc_obj, P10_0, CYHAL_ADC_VNEG, &channel_config);
    /* Initialize a differential channel for the pair of P10_2 and P10_3 */
    cyhal_adc_channel_init_diff(&adc_chan_1_obj, &adc_obj, P10_2, P10_3, &channel_config);

    /* Register a callback and set the callback argument to be a pointer to the result array
     * so that we can easily reference it in the event handler. */
    cyhal_adc_register_callback(&adc_obj, &adc_event_handler, result_arr);
    /* Subscribe to the async read complete event so that we we can process the results when they are available */
    cyhal_adc_enable_event(&adc_obj, CYHAL_ADC_ASYNC_READ_COMPLETE, CYHAL_ISR_PRIORITY_DEFAULT, true);
    /* Initiate an asynchronous read operation. The event handler will be called when it is complete. */
     cyhal_adc_read_async(&adc_obj, NUM_SCAN, result_arr);

     cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, true);
    for (;;)
    {
    	if(result_arr[0] != result_arr[1]){
    		cyhal_gpio_toggle(P0_3);
    	}
    }
}



/* [] END OF FILE */
