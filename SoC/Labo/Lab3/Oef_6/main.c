

/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

#define CLOCK 500
#define MAX 100
#define DELAY 20

int duty_cycle = 0;

int main(void)
{
    cybsp_init();
    __enable_irq();

    cyhal_pwm_t pwm_obj;
    /* Initialize PWM on the supplied pin and assign a new clock */
    cyhal_pwm_init(&pwm_obj, P13_5, NULL);
    /* Set a duty cycle of 50% and frequency of 1Hz */
    cyhal_pwm_set_duty_cycle(&pwm_obj, 0, CLOCK);
    /* Start the PWM output */
    cyhal_pwm_start(&pwm_obj);

    for (;;)
    {
    	cyhal_system_delay_ms(DELAY);

    	if(duty_cycle >= MAX){
    		duty_cycle = MAX;
    		cyhal_pwm_set_duty_cycle(&pwm_obj, duty_cycle, CLOCK);
    	}
    	else{
    		duty_cycle++;
    		cyhal_pwm_set_duty_cycle(&pwm_obj, duty_cycle, CLOCK);
    	}

    }
}

/* [] END OF FILE */
