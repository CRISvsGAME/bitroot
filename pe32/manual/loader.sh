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
