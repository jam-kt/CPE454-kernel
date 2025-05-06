/*
 * Private definitions and prototypes for pic.c and interrupt.c
 */
#ifndef __INTERRUPT_H__
#define __INTERRUPT_H__

#include <stdint-gcc.h>

extern inline void outb(uint16_t port, uint8_t val);
extern inline uint8_t inb(uint16_t port);
extern inline void io_wait(void);
extern void PIC_remap(int offset1, int offset2);
void PIC_sendEOI(uint8_t vector);
void IRQ_set_mask(uint8_t IRQline);
void IRQ_clear_mask(uint8_t IRQline);

#define PIC1		    0x20		/* IO base address for master PIC */
#define PIC2            0xA0		/* IO base address for slave PIC  */
#define PIC1_COMMAND    PIC1
#define PIC1_DATA   (PIC1+1)
#define PIC2_COMMAND    PIC2
#define PIC2_DATA	(PIC2+1)
#define PIC1_VECTOR     0x20        /* remapped vector numbers of the IRQs  */
#define PIC2_VECTOR     0x28
#define PIC_EOI		    0x20		/* End-of-interrupt command code  */

#define ICW1_ICW4	    0x01		/* Indicates that ICW4 will be present  */
#define ICW1_SINGLE	    0x02		/* Single (cascade) mode                */
#define ICW1_INTERVAL4	0x04		/* Call address interval 4 (8)          */
#define ICW1_LEVEL	    0x08		/* Level triggered (edge) mode          */
#define ICW1_INIT	    0x10		/* Initialization - required!           */

#define ICW4_8086	    0x01		/* 8086/88 (MCS-80/85) mode             */
#define ICW4_AUTO	    0x02		/* Auto (normal) EOI                    */
#define ICW4_BUF_SLAVE	0x08		/* Buffered mode/slave                  */
#define ICW4_BUF_MASTER	0x0C		/* Buffered mode/master                 */
#define ICW4_SFNM	    0x10		/* Special fully nested (not)           */


#define NUM_IRQS 256

#define TYPE_TRAPGATE 0xF
#define TYPE_INTRGATE 0xE

/* 
 * IDT entry (Call-Gate Descriptor)
 * A 16-byte entry in the Interrupt Descriptor Table
 */
struct IDT_entry {
    uint16_t offset1;   /* forms 64-bit function ptr to the ISR               */
    uint16_t select;    /* GDT selector (should be kernel's code segment)     */
    
    uint16_t IST:3;     /* interrupt stack table index (0 to stay, else 1-7 ) */
    uint16_t IGN1:5;    /* reserved         */
    uint16_t type:4;    /* type             */
    uint16_t zero:1;    /* always zero      */
    uint16_t DPL:2;     /* protection level */
    uint16_t pres:1;    /* present          */

    uint16_t offset2;
    uint32_t offset3;
    uint32_t IGN2;      /* reserved         */
} __attribute__((packed));

#define KERNEL_CS 0x08

struct idt_ptr {
  uint16_t limit;
  uint64_t base;
} __attribute__((packed));

#endif