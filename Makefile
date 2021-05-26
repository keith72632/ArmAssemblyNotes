AS=arm-linux-gnueabi-as
CC=arm-linux-gnueabi-gcc-10
VM=qemu-arm

all: run

test.o: test.s
	${AS} $< -o $@
test.elf: test.o
	${CC} $< -o $@ -nostdlib
run: test.elf
	${VM} $<

clean:
	rm test.elf test.o
