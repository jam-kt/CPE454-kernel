#define VGA_BASE 0xb8000

static unsigned short *vgaBuff = (unsigned short*)VGA_BASE;

void kernel_main() 
{
    // print 'OK'
    vgaBuff[0] = 0x2f4f;
    vgaBuff[1] = 0x2f4b;
    
    while(1);
}

