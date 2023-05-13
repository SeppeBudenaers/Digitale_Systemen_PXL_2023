
/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

/*******************************************************************************
* Global Variables
*******************************************************************************/
void gpio_interrupt_handler(void* handler_arg, cyhal_gpio_event_t event)
{
    cyhal_gpio_toggle(P0_3);
    //cyhal_system_delay_ms(500);
}

cyhal_gpio_callback_data_t cb_data =
{
    .callback     = gpio_interrupt_handler
};

int main(void)
{


    /* Initialize the device and board peripherals */
    cybsp_init();
    /* GPIO init*/
    cyhal_gpio_init(P0_4, CYHAL_GPIO_DIR_INPUT, CYHAL_GPIO_DRIVE_NONE, false);
    cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, true);
    /* Enable global interrupts */
    __enable_irq();
    /* call back event */
    cyhal_gpio_register_callback(P0_4, &cb_data);
    cyhal_gpio_enable_event(P0_4, CYHAL_GPIO_IRQ_RISE, 3, true);

    for (;;)
    {
    }
}

/* [] END OF FILE */
