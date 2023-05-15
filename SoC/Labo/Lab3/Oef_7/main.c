

/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

#define CLOCK 100

int duty_cycle[4] = {25, 40, 60, 75};
int count =0;

void gpio_interrupt_handler(void* handler_arg, cyhal_gpio_event_t event)
{
	count++;
	if(count == 4){count = 0;}
}

cyhal_gpio_callback_data_t cb_data =
{
    .callback     = gpio_interrupt_handler
};

int main(void)
{
    cybsp_init();
    __enable_irq();

    /*PWM init*/
    	cyhal_pwm_t pwm_obj;
    	/* Initialize PWM on the supplied pin and assign a new clock */
    	cyhal_pwm_init(&pwm_obj, P13_5, NULL);
    	/* Set a duty cycle of 50% and frequency of 1Hz */
    	cyhal_pwm_set_duty_cycle(&pwm_obj, 0, CLOCK);
    	/* Start the PWM output */
    	cyhal_pwm_start(&pwm_obj);

    /*interupt init*/
    	cyhal_gpio_init(P0_4, CYHAL_GPIO_DIR_INPUT, CYHAL_GPIO_DRIVE_NONE, false);
    	cyhal_gpio_register_callback(P0_4, &cb_data);
    	cyhal_gpio_enable_event(P0_4, CYHAL_GPIO_IRQ_FALL, 3, true);


    for (;;)
    {
    	cyhal_system_delay_ms(100);
    	cyhal_pwm_set_duty_cycle(&pwm_obj, duty_cycle[count] , CLOCK);
    }
}

/* [] END OF FILE */
