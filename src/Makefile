# Makefile for JamesM's kernel tutorials.
# The C and C++ rules are already setup by default.
# The only one that needs changing is the assembler
# rule, as we use nasm instead of GNU as.

SOURCES=boot.o main.o monitor.o common.o

CCFLAGS=-g -O2 -w -trigraphs -fno-builtin  -fno-exceptions -fno-stack-protector -O0 -m32  -fno-rtti -nostdlib -nodefaultlibs
LDFLAGS=-melf_i386 -static -Tlinker.ld
ASFLAGS=-felf

all: $(SOURCES) link

clean:
	-rm *.o kernel

link:
	ld $(LDFLAGS) -o kernel $(SOURCES)

%.o: %.c
	g++ $(CCFLAGS) -c $< -o  $@

.s.o:
	nasm $(ASFLAGS) $<
