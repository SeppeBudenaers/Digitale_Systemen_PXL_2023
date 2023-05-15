

/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

#define CLOCK_CLOCK 10000
#define PWM_CLOCK 500

int duty_cycle[4] = {25, 40, 60, 75};
int count =0;
uint32_t read_val;
cyhal_timer_t timer_obj;
uint32_t frequentie = 0;
uint32_t duty = 0;
int temp =0;

void gpio_interrupt_handler(void* handler_arg, cyhal_gpio_event_t event)
{
	if(event == CYHAL_GPIO_IRQ_RISE)
	{
		read_val = cyhal_timer_read(&timer_obj);
		cyhal_timer_start(&timer_obj);
		frequentie = CLOCK_CLOCK / read_val;
		duty = (duty / frequentie) * 100;
		temp = duty + frequentie;
	}

	if(event == CYHAL_GPIO_IRQ_FALL)
		{
		read_val = cyhal_timer_read(&timer_obj);
		duty = CLOCK_CLOCK / read_val;
		}
}

cyhal_gpio_callback_data_t cb_data =
{
    .callback     = gpio_interrupt_handler
};

int main(void)
{
    cybsp_init();
    __enable_irq();

    /*CLK init*/
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
        cyhal_timer_init(&timer_obj, NC, NULL);
        cyhal_timer_configure(&timer_obj, &timer_cfg);
        /* Set the frequency of timer to 10000 counts in a second or 10000 Hz */
        cyhal_timer_set_frequency(&timer_obj, CLOCK_CLOCK);
        cyhal_timer_start(&timer_obj);

    /*PWM init*/
    	cyhal_pwm_t pwm_obj;
    	/* Initialize PWM on the supplied pin and assign a new clock */
    	cyhal_pwm_init(&pwm_obj, P13_5, NULL);
    	/* Set a duty cycle of 50% and frequency of 1Hz */
    	cyhal_pwm_set_duty_cycle(&pwm_obj,50, PWM_CLOCK);
    	/* Start the PWM output */
    	cyhal_pwm_start(&pwm_obj);

    /*interupt init*/
    	cyhal_gpio_init(P13_4, CYHAL_GPIO_DIR_INPUT, CYHAL_GPIO_DRIVE_NONE, false);
    	cyhal_gpio_register_callback(P13_4, &cb_data);
    	cyhal_gpio_enable_event(P13_4, CYHAL_GPIO_IRQ_BOTH, 3, true);


    for (;;)
    {
    }
}

/* [] END OF FILE */
