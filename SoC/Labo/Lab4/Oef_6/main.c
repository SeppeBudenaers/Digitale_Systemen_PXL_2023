/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"
 cyhal_comp_t comp_obj;
static void comp_event_handler(void* arg, cyhal_comp_event_t event)
{
	 cyhal_gpio_toggle(P1_1);
}


int main(void)
{
    /* Initialize the device and board peripherals */
    cybsp_init();
    /* Enable global interrupts */
    __enable_irq();

    cyhal_gpio_init(P1_1, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, false);

        cyhal_comp_config_t config = { .power = CYHAL_POWER_LEVEL_HIGH, .hysteresis = false };
        /* Initialize comparator, using pin P9_0 for the input and pin P9_1 for the reference.
        * No output pin is used.
        */
        cyhal_comp_init(&comp_obj, P9_0, P9_1, NC, &config);
        /* Register a callback and set the callback argument to be a pointer to the comparator object,
         * so that we can easily reference it from the callback handler.
         */
         cyhal_comp_register_callback(&comp_obj, &comp_event_handler, &comp_obj);
        /* Subscribe to both the rising and falling edges, so that the event handler is called whenever
         * the comparator output changes
         */
        cyhal_comp_enable_event(&comp_obj, (cyhal_comp_event_t)(CYHAL_COMP_RISING_EDGE | CYHAL_COMP_FALLING_EDGE), CYHAL_ISR_PRIORITY_DEFAULT, true);

    for (;;)
    {
    }
}

/* [] END OF FILE */

