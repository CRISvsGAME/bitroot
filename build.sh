#!/bin/bash
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"

cd "$ROOT/pe32/manual"
./loader.sh

cd "$ROOT/pe32/nasm"
./loader.sh
