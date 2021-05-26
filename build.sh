#!/bin/bash

arm-linux-gnueabi-as $1.s -o $1.o
arm-linux-gnueabi-gcc-10 $1.o -o $1.elf -nostdlib
qemu-arm $1.elf ; echo $?

rm $1.o $1.elf
