#!/bin/sh

MEM=32
GRUB=./GRUB/*
KER=./bin/sos.bin
IRD=./initrd
FDA=./img/floppy.img

# Build initrd
echo "# Building Initial RD..."
cd ..
./build_rd.sh
cd SOS_okMT
#runs qemu!
#sudo qemu-system-i386 -fda $FDA -m $MEM
echo "# Building floppy image..."
./make_floppy.sh
echo "# Running VirtualMachine..."
#virtualbox --startvm sos --debug --start-running
#qemu-system-i386 -cdrom bootable.iso -m $MEM -boot d
bochs
echo "# Run finished"
#bochs
