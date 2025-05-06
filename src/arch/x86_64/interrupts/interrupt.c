#include <stddef.h>
#include <stdint-gcc.h>

#include <stdio.h>
#include "interrupt.h"

/*******************************************************************************
 *  ASM HELPER FUNCTIONS
 ******************************************************************************/
/* disable interrupts */
inline void CLI()
{
    asm ( "CLI");
}

/* enable interrupts */
inline void STI()
{
    asm ( "STI");
}

inline bool are_interrupts_enabled()
{
    unsigned long flags;
    asm volatile ( "pushf\n\t"
                   "pop %0"
                   : "=g"(flags) );
    return flags & (1 << 9);
}


/*******************************************************************************
 *  INTERRUPT INITIALIZATION
 ******************************************************************************/
/* callback function */
typedef void (*irq_handler_t) (int, int, void*);

/* table of C ISR function pointers. Index using IRQ number */
static struct {
    void *arg;
    irq_handler_t handler;  /* function pointer */
} irq_table[NUM_IRQS];

struct IDT_entry idt[NUM_IRQS];


/*******************************************************************************
 *  INTERRUPT HANDLER
 ******************************************************************************/
void c_isr_handler(int vector, unsigned err)
{
    if (irq_table[vector].handler != NULL) {
        irq_table[vector].handler(vector, err, irq_table[vector].arg);
    } else {
        printk("Unhandled Interrupt Vector: %d", vector);
        while(1);
    }

    PIC_sendEOI(vector);
}











