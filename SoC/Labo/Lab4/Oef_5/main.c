/*******************************************************************************
* Header Files
*******************************************************************************/
#include "cyhal.h"
#include "cybsp.h"

int main(void)
{
    /* Initialize the device and board peripherals */
    cybsp_init();
    /* Enable global interrupts */
    __enable_irq();

    cyhal_dac_t my_dac_obj;
    /* Full Scale value for the DAC */
    uint16_t dac_value = 0;
    uint16_t dac_read;
    /* Initialize DAC, set Pin 9[6] as the DAC output */
    cyhal_dac_init(&my_dac_obj, P9_6);

    for (;;)
    {
        /* Write the 16 bit value as DAC input */
        cyhal_dac_write(&my_dac_obj, dac_value);
        dac_read = cyhal_dac_read(&my_dac_obj);
        if (dac_read != 0xFFFF){
        	dac_value = dac_read + 66;
        }
        else{
        	dac_value = 0;
        }
        cyhal_system_delay_ms(1);
    }
}
// need to make steps of 3,3 mV

/* [] END OF FILE */
