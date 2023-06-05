/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

/*******************************************************************************/

int main(void)
{
    /* Initialize the device and board peripherals */
    cybsp_init();
    /* Enable global interrupts */
       __enable_irq();
    /* GPIO init*/
    cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, true);
    /*watchdog init*/
    cyhal_wdt_t wdt_obj;
    uint32_t timeout_ms = 6000;
    cyhal_wdt_init(&wdt_obj, timeout_ms);
    cyhal_wdt_start(&wdt_obj);

    if (CYHAL_SYSTEM_RESET_WDT == cyhal_system_get_reset_reason())
        {
            cyhal_gpio_write(CYBSP_USER_LED, CYBSP_LED_STATE_ON);
            cyhal_system_delay_ms(100);
            cyhal_gpio_write(CYBSP_USER_LED, CYBSP_LED_STATE_OFF);
            cyhal_system_delay_ms(100);
        }
    for (;;)
    {
    	cyhal_system_delay_ms(2000);
    	cyhal_syspm_deepsleep();
    }
}

/* [] END OF FILE */
