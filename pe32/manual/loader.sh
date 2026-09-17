#!/bin/bash

LOADER="loader.efi"

truncate -s 0 "$LOADER"
truncate -s 1024 "$LOADER"
