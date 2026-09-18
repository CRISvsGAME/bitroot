#!/bin/bash

LOADER="loader.efi"
NASM="loader.asm"

nasm -f bin "$NASM" -o "$LOADER"
