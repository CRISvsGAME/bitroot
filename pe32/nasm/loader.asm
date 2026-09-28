bits 64

dw 0x5A4D                   ; DOS Signature (MZ)
times 0x3C - ($ - $$) db 0
dd 0x40                     ; PE Header Offset (64)
dd 0x4550                   ; PE Signature (PE\0\0)
dw 0x8664                   ; Machine (IMAGE_FILE_MACHINE_AMD64)
dw 0x01                     ; NumberOfSections (1)
dd 0x00                     ; TimeDateStamp (0)
dd 0x00                     ; PointerToSymbolTable
dd 0x00                     ; NumberOfSymbols
dw 0x70                     ; SizeOfOptionalHeader (112)
dw 0x02                     ; Characteristics (IMAGE_FILE_EXECUTABLE_IMAGE)
dw 0x020B                   ; Magic (PE32+)
db 0x00                     ; MajorLinkerVersion
db 0x00                     ; MinorLinkerVersion
dd 0x00                     ; SizeOfCode
dd 0x00                     ; SizeOfInitializedData
dd 0x00                     ; SizeOfUninitializedData
dd 0x00                     ; AddressOfEntryPoint
dd 0x00                     ; BaseOfCode
times 1024 - ($ - $$) db 0
