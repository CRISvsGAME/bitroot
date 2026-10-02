#!/bin/bash

LOADER="loader.efi"

truncate -s 0 "$LOADER"
truncate -s 1024 "$LOADER"

printf '\x4D\x5A' | dd of="$LOADER" bs=1 seek=0 conv=notrunc
printf '\x40\x00\x00\x00' | dd of="$LOADER" bs=1 seek=60 conv=notrunc
printf '\x50\x45\x00\x00' | dd of="$LOADER" bs=1 seek=64 conv=notrunc
printf '\x64\x86' | dd of="$LOADER" bs=1 seek=68 conv=notrunc
printf '\x01\x00' | dd of="$LOADER" bs=1 seek=70 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=72 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=76 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=80 conv=notrunc
printf '\x70\x00' | dd of="$LOADER" bs=1 seek=84 conv=notrunc
printf '\x02\x00' | dd of="$LOADER" bs=1 seek=86 conv=notrunc
printf '\x0B\x02' | dd of="$LOADER" bs=1 seek=88 conv=notrunc
printf '\x00\x00' | dd of="$LOADER" bs=1 seek=90 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=92 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=96 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=100 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=104 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=108 conv=notrunc
printf '\x00\x00\x00\x00\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=112 conv=notrunc
printf '\x00\x10\x00\x00' | dd of="$LOADER" bs=1 seek=120 conv=notrunc
printf '\x00\x02\x00\x00' | dd of="$LOADER" bs=1 seek=124 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=128 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=132 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=136 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=140 conv=notrunc
printf '\x00\x00\x00\x00' | dd of="$LOADER" bs=1 seek=144 conv=notrunc
printf '\x00\x02\x00\x00' | dd of="$LOADER" bs=1 seek=148 conv=notrunc
