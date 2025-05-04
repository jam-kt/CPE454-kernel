#include <stddef.h>
#include <stdint-gcc.h>

#include <kernel/vga.h>

#define VGA_BASE 0xB8000
#define VGA_WIDTH 80
#define VGA_HEIGHT 25

static uint16_t * const vga_buff = (uint16_t *)VGA_BASE;
static int row = 0;
static int col = 0;
static uint8_t color = FG(VGA_LIGHT_GREY) | BG(VGA_BLACK);

void vga_setcolor(uint8_t fg, uint8_t bg)
{
    color = FG(fg) | BG(bg);
}

/* move cursor down one row, does not reset column */
static void vga_nextrow()
{
    if (row >= VGA_HEIGHT - 1) {
        row = 0;
    } else {
        row++;
    }
}

/* reset cursor to left */
static void vga_nextcol()
{
    if (col >= VGA_WIDTH - 1) {
        col = 0;
        vga_nextrow();
    } else {
        col++;
    }
}

void vga_display_char(char c)
{
    uint8_t uc = (uint8_t)c;

    if (uc == '\n') {
        vga_nextrow();
        col = 0;
    } else if (c == '\r') {
        col = 0;
    } else {
        vga_buff[(row * VGA_WIDTH) + col] = (color << 8) | uc;
        vga_nextcol();
    }
}

void vga_display_str(const char *s)
{   
    for (; *s; ++s) {
        vga_display_char(*s); 
    }
}

void vga_clear()
{
    for (int y = 0; y < VGA_HEIGHT; y++) {
        for (int x = 0; x < VGA_WIDTH; x++) {
            vga_buff[(y * VGA_WIDTH) + x] = (color << 8) | ' ';
        }
    }

    row = 0;
    col = 0;
}