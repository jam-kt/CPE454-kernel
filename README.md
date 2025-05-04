# CPE454-kernel
CPE454 Kernel Project


CPE453-kernel/
├── .gitignore
├── Makefile
├── README.md
├── make-image.sh
├── src/
│   ├── arch/
│   │   └── x86_64/
│   │       ├── boot.asm
│   │       ├── grub.cfg
│   │       ├── linker.ld
│   │       ├── long_mode_init.asm
│   │       ├── multiboot_header.asm
|   |       └── vga.c
│   ├── include/
│   │   └── kernel/
│   │       └── vga.h
|   └── kernel/
│       └── main.c
├── libc/
│   ├── arch/
│   │   └── x86_64/
│   ├── include/
│   │   ├── stdio.h
│   │   └── string.h
│   ├── string.c
│   └── stdio.c


If permission error occurs wheb trying to $make run then ensure the shell script 
is executable. $chmod +x make_image.sh