#include "cyhal.h"
#include "cybsp.h"
#define ADC_VPLUS1 (P10_0)

int32_t adc_out;
cyhal_adc_t         adc_obj;
cyhal_adc_channel_t adc_chan_0_obj;
bool led = true;


static void adc_continuous_event_handler(void* arg, cyhal_adc_event_t event)
{

    if(0u != (event & CYHAL_ADC_EOS))
    {       int32_t adc_out;
            adc_out= cyhal_adc_read(&adc_chan_0_obj);
            cyhal_system_delay_ms(500);
            if (adc_out >= 20)
            {
                led = false;
            }
            if (adc_out <= 20)
            {
                led = true;
            }
            cyhal_gpio_write(P0_3, led);
    }
}

int main(void)
{




    cyhal_adc_config_t config =
    {
            .continuous_scanning = true
    };

    const cyhal_adc_channel_config_t channel_config =
        {
                .enable_averaging = false,
                .min_acquisition_ns = 220,
                .enabled = true
        };

    cybsp_init();

    __enable_irq();

    cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, 1u);


    cyhal_adc_init(&adc_obj, ADC_VPLUS1, NULL);
    cyhal_adc_configure(&adc_obj, &config);
    cyhal_adc_channel_init_diff(&adc_chan_0_obj, &adc_obj, ADC_VPLUS1, CYHAL_ADC_VNEG,    &channel_config);

    cyhal_adc_register_callback(&adc_obj, &adc_continuous_event_handler, &adc_obj);
    cyhal_adc_enable_event(&adc_obj, CYHAL_ADC_EOS, CYHAL_ISR_PRIORITY_DEFAULT, true);
    /* Call the ADC configure function to begin continuous scanning */
    cyhal_adc_configure(&adc_obj, &config);


    for (;;)
    {
    }
}
