MAKEFLAGS += --warn-undefined-variables

arch ?= x86_64
kernel := build/kernel-$(arch).bin
img := build/boot-$(arch).img

linker_script := src/arch/$(arch)/linker.ld
grub_cfg := src/arch/$(arch)/grub.cfg
asm_src_files := $(wildcard src/arch/$(arch)/*.asm)
asm_obj_files := $(patsubst src/arch/$(arch)/%.asm, build/arch/$(arch)/%.o, $(asm_src_files))

CC := ~/cross/bin/$(arch)-elf-gcc
CFLAGS := -Wall -pedantic -Werror -std=gnu99 -g -c -mno-red-zone
c_src_files := $(wildcard src/*.c)
c_obj_files := $(patsubst src/%.c, build/%.o, $(c_src_files))


.PHONY: all clean run img

all: $(kernel)

clean:
	@rm -r build

run: $(img)
	@qemu-system-$(arch) -s -drive format=raw,file=$(img) -serial stdio

img: $(img)

$(img): $(kernel)
	@dd if=/dev/zero of=$(img) bs=512 count=32768
	@parted $(img) mklabel msdos
	@parted $(img) mkpart primary ext2 2048s 30720s
	@parted $(img) set 1 boot on

	@LOOP_DISK=$$(losetup -f); \
	LOOP_NUM=$$(echo $$LOOP_DISK | sed 's/[^0-9]//g'); \
	LOOP_PART=/dev/loop$$((LOOP_NUM + 1)); \
	sudo losetup $$LOOP_DISK $(img); \
	sudo losetup $$LOOP_PART $(img) -o 1048576; \
	sudo mkfs.ext2 $$LOOP_PART; \
	sudo mkdir -p /mnt/osfiles; \
	sudo mount $$LOOP_PART /mnt/osfiles; \
	sudo mkdir -p /mnt/osfiles/boot/grub; \
	sudo cp $(kernel) /mnt/osfiles/boot/kernel.img; \
	sudo cp $(grub_cfg) /mnt/osfiles/boot/grub/grub.cfg; \
	sudo grub-install --root-directory=/mnt/osfiles --no-floppy \
	--modules="normal part_msdos ext2 multiboot" $$LOOP_DISK; \
	sudo cp $(img) /mnt/osfiles; \
	sudo umount /mnt/osfiles; \
	sudo losetup -d $$LOOP_DISK; \
	sudo losetup -d $$LOOP_PART 

$(kernel): $(asm_obj_files) $(c_obj_files) $(linker_script)
	@ld -n -T $(linker_script) -o $(kernel) $(asm_obj_files) $(c_obj_files)

# compile assembly files
build/arch/$(arch)/%.o: src/arch/$(arch)/%.asm
	@mkdir -p $(shell dirname $@)
	@nasm -f elf64 $< -o $@

# compile C files
build/%.o: src/%.c
	@mkdir -p $(shell dirname $@)
	$(CC) $(CFLAGS) $< -o $@