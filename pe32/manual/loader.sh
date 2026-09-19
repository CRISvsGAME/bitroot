#!/bin/bash

LOADER="loader.efi"

truncate -s 0 "$LOADER"
truncate -s 1024 "$LOADER"

printf '\x4D\x5A' | dd of="$LOADER" bs=1 seek=0 conv=notrunc
