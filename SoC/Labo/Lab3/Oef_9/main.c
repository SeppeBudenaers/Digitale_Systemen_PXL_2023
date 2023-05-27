

/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"
#include "math.h"

#define PWM_CLOCK 1000
#define ANGLE_STEP_RATE 1.8
#define PI 3.14159

char sineLookupTable[200];
int count = 0;
cyhal_pwm_t pwm_obj;

void computeSineLookupTable(void)
{
	float angle;
	int i;
	for(i=0; i<200; i++)
	{
		angle = ( ((float)i) * ANGLE_STEP_RATE );
		sineLookupTable[i] = rint(100 + 99* sin( angle * (PI/180) )); //converting angle to radians
	}
}
void snippet_cyhal_pwm_events(void)
{

}
void pwm_event_handler(void *callback_arg, cyhal_pwm_event_t event)
{
    	count++;
    	cyhal_pwm_set_duty_cycle(&pwm_obj,sineLookupTable[count] , PWM_CLOCK);
    	if (count >= 200){count = 0;}
}

int main(void)
{
    cybsp_init();
    __enable_irq();

    computeSineLookupTable();
    snippet_cyhal_pwm_events();
    cy_rslt_t rslt;

    /* Initialize PWM on the supplied pin and assign a new clock */
    rslt = cyhal_pwm_init(&pwm_obj, P13_5, NULL);
    CY_ASSERT(CY_RSLT_SUCCESS == rslt);
    /* Set a duty cycle of 50% and frequency of 1Hz */
    rslt = cyhal_pwm_set_duty_cycle(&pwm_obj,count, PWM_CLOCK);
    CY_ASSERT(CY_RSLT_SUCCESS == rslt);
    /* Register a callback function (pwm_event_handler) to execute on event trigger */
    cyhal_pwm_register_callback(&pwm_obj, pwm_event_handler, NULL);
    /* Enable all events to trigger the callback */
    cyhal_pwm_enable_event(&pwm_obj, CYHAL_PWM_IRQ_TERMINAL_COUNT, 3, true);
    /* Start the PWM output */
    rslt = cyhal_pwm_start(&pwm_obj);
    CY_ASSERT(CY_RSLT_SUCCESS == rslt);

    for (;;)
    {
    }
}

/* [] END OF FILE */
