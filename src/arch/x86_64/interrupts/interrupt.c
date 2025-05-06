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
    asm ( "STI")
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

void IRQ_init()
{
    CLI();

    /* reinitialize the PIC, change mapping [0x00, 0x1F] -> [0x20, 0x2F] */
    PIC_remap(PIC1_VECTOR, PIC2_VECTOR);
}

/*******************************************************************************
 *  INTERRUPT HANDLER
 ******************************************************************************/
void c_isr_handler(int vector, unsigned err)
{
    if (irq_table[vector]) {
        irq_table[vector].handler(vector, err, irq_table[vector].arg);
    } else {
        printk("Unhandled Interrupt Vector: %d", vector);
        while(1);
    }

    PIC_sendEOI(vector)
}











