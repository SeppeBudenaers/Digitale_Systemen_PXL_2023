/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"
#include "stdio.h"

#define HIGH 0
#define LOW 1

int main(void)
{
	uint32_t read_val;
	/* Timer object used */
	cyhal_timer_t timer_obj;
	const cyhal_timer_cfg_t timer_cfg =
	{
			.compare_value = 0,                 /* Timer compare value, not used */
	        .period = 20000,                    /* Timer period set to a large enough value
	                                             * compared to event being measured */
	        .direction = CYHAL_TIMER_DIR_UP,    /* Timer counts up */
	        .is_compare = false,                /* Don't use compare mode */
	        .is_continuous = false,             /* Do not run timer indefinitely */
	        .value = 0                          /* Initial value of counter */
	};
	/* Initialize the timer object. Does not use pin output ('pin' is NC) and
	 * does not use a pre-configured clock source ('clk' is NULL). */
	cyhal_timer_init(&timer_obj, NC, NULL);
	/* Apply timer configuration such as period, count direction, run mode, etc. */
	cyhal_timer_configure(&timer_obj, &timer_cfg);
	/* Set the frequency of timer to 10000 counts in a second or 10000 Hz */
	cyhal_timer_set_frequency(&timer_obj, 1000000);
	/* Start the timer with the configured settings */
	cyhal_timer_start(&timer_obj);
	/* Delay Function simulates the time between two events */
	cyhal_system_delay_us(10);
	/* Read the current timer value, which should be close to the amount of delay in ms * 10 (5000) */
	read_val = cyhal_timer_read(&timer_obj);

    cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, LOW);
    for (;;)
    {
    	if(read_val >= 50){
    		cyhal_gpio_toggle(P0_3);
    	}
    }
}

/* [] END OF FILE */
