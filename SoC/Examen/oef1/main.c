/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

/*******************************************************************************
* Global Variables
*******************************************************************************/
#define HIGH 	0
#define LOW 	1

int state = 0;
int counted = 0;
void isr_button(void* handler_arg, cyhal_gpio_event_t event)
{
	state++;
}

cyhal_gpio_callback_data_t cb_data =
{
    .callback     = isr_button
};

int main(void)
{
	/* Initialize the device and board peripherals */
	    cybsp_init();
	    /* GPIO init*/
	    cyhal_gpio_init(P0_4, CYHAL_GPIO_DIR_INPUT, CYHAL_GPIO_DRIVE_NONE, false);
	    cyhal_gpio_init(P0_3, CYHAL_GPIO_DIR_OUTPUT, CYHAL_GPIO_DRIVE_STRONG, 1u);
	    /* Enable global interrupts */
	    __enable_irq();
	    /* call back event */
	    cyhal_gpio_register_callback(P0_4, &cb_data);
	    cyhal_gpio_enable_event(P0_4, CYHAL_GPIO_IRQ_BOTH, 3, true);

    for (;;)
    {
    	switch (state){

    	case 5:
    		if(counted < 10){
    			cyhal_gpio_toggle(P0_3);
    			cyhal_system_delay_ms(100);
    			counted++;
    		}
    		break;
    	case 6:
    		counted = 0;
    		cyhal_gpio_write(P0_3,LOW);
    		state = 0;
    		cyhal_syspm_deepsleep();
    		break;
    	default:
    		cyhal_syspm_deepsleep();
    	}
    }
}
