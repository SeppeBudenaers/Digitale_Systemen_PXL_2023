

/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

int main(void)
{
    cybsp_init();
    __enable_irq();

    cyhal_pwm_t pwm_obj;
    /* Initialize PWM on the supplied pin and assign a new clock */
    cyhal_pwm_init(&pwm_obj, P13_5, NULL);
    /* Set a duty cycle of 50% and frequency of 1Hz */
    cyhal_pwm_set_duty_cycle(&pwm_obj, 75, 500);
    /* Start the PWM output */
    cyhal_pwm_start(&pwm_obj);
    for (;;)
    {
    }
}

/* [] END OF FILE */
