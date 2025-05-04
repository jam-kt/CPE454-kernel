#include <stddef.h>
#include <stdint-gcc.h>

#include <kernel/ps2_keyboard.h>

#define PS2_DATA 0x60
#define PS2_CMD 0x64
#define PS2_STATUS PS2_CMD
#define PS2_STATUS_OUTPUT 1
#define PS2_STATUS_INPUT (1 << 1)

static uint8_t inb(uintptr_t addr)
{
    uint8_t *ptr = (uint8_t *)addr;
    return ptr[0];
}

static void outb(uintptr_t addr, uint8_t byte)
{
    uint8_t *ptr = (uint8_t *)addr;
    ptr[0] = byte;
}




static char ps2_poll_read()
{
    char status = inb(PS2_STATUS);
    while (!(status & PS2_STATUS_OUTPUT)) {
        status = inb(PS2_STATUS);
    }
    
    return inb(PS2_DATA);
}
