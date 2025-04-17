#define VGA_BASE 0xB8000

static unsigned short *vga_buff = (unsigned short*)VGA_BASE;

void kernel_main() 
{
    // print 'OK'
    vga_buff[0] = 0x2f4f;
    vga_buff[1] = 0x2f4b;
    

    
    while(1);
}

