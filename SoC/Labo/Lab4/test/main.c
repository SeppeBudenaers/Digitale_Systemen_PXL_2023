/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"
cyhal_timer_t timer_obj;
cyhal_dac_t my_dac_obj;

uint16_t dac_value = 0;
uint16_t dac_read;
int count = 0;
static void isr_timer(void *callback_arg, cyhal_timer_event_t event)
{
	count++;
	if(count == 1000){
		cyhal_gpio_toggle(P0_3);
		count = 0;
	}

	dac_read = cyhal_dac_read(&my_dac_obj);
	dac_value = dac_read + 66;
}

void snippet_cyhal_timer_event_interrupt()
{
    cy_rslt_t rslt;
    const cyhal_timer_cfg_t timer_cfg =
    {
        .compare_value = 0,                 /* Timer compare value, not used */
        .period = 1000,                      /* Defines the timer period */
        .direction = CYHAL_TIMER_DIR_UP,    /* Timer counts up */
        .is_compare = false,                /* Don't use compare mode */
        .is_continuous = true,              /* Run the timer indefinitely */
        .value = 0                          /* Initial value of counter */
    };
    /* Initialize the timer object. Does not use pin output ('pin' is NC) and
     * does not use a pre-configured clock source ('clk' is NULL). */
    rslt = cyhal_timer_init(&timer_obj, NC, NULL);
    CY_ASSERT(CY_RSLT_SUCCESS == rslt);
    /* Apply timer configuration such as period, count direction, run mode, etc. */
    rslt = cyhal_timer_configure(&timer_obj, &timer_cfg);
    /* Set the frequency of timer to 10000 Hz */
    rslt = cyhal_timer_set_frequency(&timer_obj, (1000*100000));
    /* Assign the ISR to execute on timer interrupt */
    cyhal_timer_register_callback(&timer_obj, isr_timer, NULL);
    /* Set the event on which timer interrupt occurs and enable it */
    cyhal_timer_enable_event(&timer_obj, CYHAL_TIMER_IRQ_TERMINAL_COUNT, 3, true);
    /* Start the timer with the configured settings */
    rslt = cyhal_timer_start(&timer_obj);
}

int main(void)
{
    /* Initialize the device and board peripherals */
    cybsp_init();
    /* Enable global interrupts */
    __enable_irq();
    /*Timer init*/
    snippet_cyhal_timer_event_interrupt();
    /*GPIO Init*/
    cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, 0);

    /* Full Scale value for the DAC */

    /* Initialize DAC, set Pin 9[6] as the DAC output */
    cyhal_dac_init(&my_dac_obj, P9_6);

    for (;;)
    {
        /* Write the 16 bit value as DAC input */
        cyhal_dac_write(&my_dac_obj, dac_value);
    }
}
/* [] END OF FILE */
