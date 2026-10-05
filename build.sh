#!/bin/bash
set -e

LOADER="loader.efi"
ROOT="$(cd "$(dirname "$0")" && pwd)"
MANUAL="$ROOT/pe32/manual"
NASM="$ROOT/pe32/nasm"
LENGTH=224

cd "$MANUAL"
./loader.sh

cd "$NASM"
./loader.sh

printf "Manual:\n"
xxd -g 1 -l "$LENGTH" "$MANUAL/$LOADER"

printf "\nNASM:\n"
xxd -g 1 -l "$LENGTH" "$NASM/$LOADER"

printf "\nComparison:\n"
cmp "$MANUAL/$LOADER" "$NASM/$LOADER" && echo "IDENTICAL"
