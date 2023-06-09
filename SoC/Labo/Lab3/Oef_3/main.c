/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"
#include "stdio.h"

#define HIGH 	0
#define LOW 	1

/* Timer object used */
cyhal_timer_t timer_obj;
static void isr_timer(void *callback_arg, cyhal_timer_event_t event)
{
    cyhal_gpio_toggle(P0_3);
}

int main(void)
{
	__enable_irq();
	cybsp_init();
	const cyhal_timer_cfg_t timer_cfg =
	{
	        .compare_value = 0,                 /* Timer compare value, not used */
	        .period = 5000,                      /* Defines the timer period */
	        .direction = CYHAL_TIMER_DIR_UP,    /* Timer counts up */
	        .is_compare = false,                /* Don't use compare mode */
	        .is_continuous = true,              /* Run the timer indefinitely */
	        .value = 0                          /* Initial value of counter */
	 };
	 /* Initialize the timer object. Does not use pin output ('pin' is NC) and
	  * does not use a pre-configured clock source ('clk' is NULL). */
	 cyhal_timer_init(&timer_obj, NC, NULL);
	 /* Apply timer configuration such as period, count direction, run mode, etc. */
	 cyhal_timer_configure(&timer_obj, &timer_cfg);
	 /* Set the frequency of timer to 10000 Hz */
	 cyhal_timer_set_frequency(&timer_obj, 10000);
	 /* Assign the ISR to execute on timer interrupt */
	 cyhal_timer_register_callback(&timer_obj, isr_timer, NULL);
	 /* Set the event on which timer interrupt occurs and enable it */
	 cyhal_timer_enable_event(&timer_obj, CYHAL_TIMER_IRQ_TERMINAL_COUNT, 3, true);
	 /* Start the timer with the configured settings */
	 cyhal_timer_start(&timer_obj);

	 cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, LOW);

    for (;;)
    {

    }
}

/* [] END OF FILE */
