#!/bin/bash

# Gunzip vlinux.bin
gzip --best --force ./output/images/vmlinux.bin

# Create uImage
#mkimage -A mips -O linux -T kernel -C gzip -a 0x80060000 -e 0x802ac0d0 -n "WeIO Linux" -d ./output/images/vmlinux.bin.gz ./output/images/uImage
mkimage -A mips -O linux -T kernel -C gzip -a 0x80060000 -e 0x80060000 -n "WeIO Linux" -d ./output/images/vmlinux.bin.gz ./output/images/uImage

# Copy uImage to /tftpboot
cp ./output/images/uImage /tftpboot
