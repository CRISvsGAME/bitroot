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
dq 0x00                     ; ImageBase
dd 0x1000                   ; SectionAlignment (4096)
dd 0x0200                   ; FileAlignment (512)
dw 0x00                     ; MajorOperatingSystemVersion
dw 0x00                     ; MinorOperatingSystemVersion
dw 0x00                     ; MajorImageVersion
dw 0x00                     ; MinorImageVersion
dw 0x00                     ; MajorSubsystemVersion
dw 0x00                     ; MinorSubsystemVersion
dd 0x00                     ; Win32VersionValue
dd 0x00                     ; SizeOfImage
dd 0x0200                   ; SizeOfHeaders (512)
dd 0x00                     ; CheckSum
dw 0x0A                     ; Subsystem (IMAGE_SUBSYSTEM_EFI_APPLICATION)
dw 0x00                     ; DllCharacteristics
dq 0x00                     ; SizeOfStackReserve
dq 0x00                     ; SizeOfStackCommit
dq 0x00                     ; SizeOfHeapReserve
dq 0x00                     ; SizeOfHeapCommit
times 1024 - ($ - $$) db 0
