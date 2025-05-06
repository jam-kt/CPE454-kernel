#include <stddef.h>
#include <stdint-gcc.h>

#include <stdio.h>
#include "interrupt.h"

/* inb and outb wrappers using intel syntax */
static inline uint8_t inb(uint16_t port)
{
    uint8_t ret;
    asm volatile ("inb  %0, %1"
                   : "=a"(ret)
                   : "Nd"(port));
    return ret;
}

static inline void outb(uint16_t port, uint8_t val)
{
    asm volatile ("outb %1, %0"
                   :
                   : "a"(val), "Nd"(port));
}

/* invoke a small delay by writing to an unused port */
static inline void io_wait(void)
{
    outb(0x80, 0);
}

/*
 * From OSDevWiki
 * - offset1: vector offset for master PIC vectors (offset1...offset1+7)
 * - offset2: vector offset for slave PIC vectors (offset2...offset2+7)
 */
static void PIC_remap(int offset1, int offset2)
{
    // starts the initialization sequence (in cascade mode)
    outb(PIC1_COMMAND, ICW1_INIT | ICW1_ICW4);
    io_wait();
    outb(PIC2_COMMAND, ICW1_INIT | ICW1_ICW4);
    io_wait();
    outb(PIC1_DATA, offset1);       // ICW2: Master PIC vector offset
    io_wait();
    outb(PIC2_DATA, offset2);       // ICW2: Slave PIC vector offset
    io_wait();
    // ICW3: tell Master PIC that there is a slave PIC at IRQ2 (0000 0100)
    outb(PIC1_DATA, 4);
    io_wait();
    // ICW3: tell Slave PIC its cascade identity (0000 0010)
    outb(PIC2_DATA, 2);
    io_wait();
    
    // ICW4: have the PICs use 8086 mode (and not 8080 mode)
    outb(PIC1_DATA, ICW4_8086);
    io_wait();
    outb(PIC2_DATA, ICW4_8086);
    io_wait();

    // Unmask both PICs
    outb(PIC1_DATA, 0);
    outb(PIC2_DATA, 0);
}

void IRQ_init()
{
    CLI();

    /* reinitialize the PIC, change mapping [0x00, 0x1F] -> [0x20, 0x2F] */
    PIC_remap(PIC1_VECTOR, PIC2_VECTOR);
}

/* signal the PIC that the IRQ has been servied. Checks for valid vector num */
void PIC_sendEOI(uint8_t vector)
{
    if ((vector >= PIC2_VECTOR) && (vector < PIC2_VECTOR + 8)) {
        outb(PIC2_COMMAND, PIC_EOI);
    }
    
    if ((vector >= PIC1_VECTOR) && (vector < PIC1_VECTOR + 16)) {
        outb(PIC1_COMMAND, PIC_EOI);
    }
}

void IRQ_set_mask(uint8_t IRQline) 
{
    uint16_t port;
    uint8_t value;

    if (IRQline < 8) {
        port = PIC1_DATA;
    } else {
        port = PIC2_DATA;
        IRQline -= 8;
    }
    
    value = inb(port) | (1 << IRQline);
    outb(port, value);        
}

void IRQ_clear_mask(uint8_t IRQline) 
{
    uint16_t port;
    uint8_t value;

    if (IRQline < 8) {
        port = PIC1_DATA;
    } else {
        port = PIC2_DATA;
        IRQline -= 8;
    }

    value = inb(port) & ~(1 << IRQline);
    outb(port, value);        
}
