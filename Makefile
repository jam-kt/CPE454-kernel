# Recursively find all C and ASM files. Object files go in build directory
# Architecture-specific C files: Only from the directory matching the $(arch) variable.
arch_c_files := $(shell find src/arch/$(arch) -type f -name '*.c')
arch_obj_files := $(patsubst %.c,build/%.o,$(arch_c_files))

common_c_files := $(shell find src/kernel -type f -name '*.c')
common_obj_files := $(patsubst %.c,build/%.o,$(common_c_files))

# Combine all C source files.
c_obj_files := $(arch_obj_files) $(common_obj_files)

all_asm_files := $(shell find src -type f -name '*.asm')
asm_obj_files := $(patsubst %.asm,build/%.o,$(all_asm_files))

arch ?= x86_64
kernel_bin := build/kernel-$(arch).bin
img := build/boot-$(arch).img

CC := ~/cross/bin/$(arch)-elf-gcc
CFLAGS := -Wall -pedantic -Werror -std=gnu99 -g -c -mno-red-zone -Isrc/include -Ilibc/include

linker_script := src/arch/$(arch)/linker.ld
grub_cfg := src/arch/$(arch)/grub.cfg

MAKE_IMAGE_SCRIPT := ./make_image.sh

.PHONY: all clean run img

all: $(kernel_bin)

clean:
	@rm -rf build

run: $(img)
	@qemu-system-$(arch) -s -drive format=raw,file=$(img) -serial stdio

img: $(img)

$(img): $(kernel_bin)
	@$(MAKE_IMAGE_SCRIPT) $(img) $(kernel_bin) $(grub_cfg)

$(kernel_bin): $(asm_obj_files) $(c_obj_files) $(linker_script)
	@ld -n -T $(linker_script) -o $(kernel_bin) $(asm_obj_files) $(c_obj_files)

# Generic rule for compiling C files that preserves their relative path.
build/%.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $< -o $@

# Generic rule for assembling .asm files.
build/%.o: %.asm
	@mkdir -p $(dir $@)
	@nasm -f elf64 $< -o $@