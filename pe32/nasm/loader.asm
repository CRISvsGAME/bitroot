bits 64

dw 0x5A4D                   ; DOS Signature (MZ)
times 0x3C - ($ - $$) db 0
dd 0x40                     ; PE Header Offset (64)
dd 0x4550                   ; PE Signature (PE\0\0)
dw 0x8664                   ; Machine (IMAGE_FILE_MACHINE_AMD64)
dw 0x01                     ; NumberOfSections (1)
dd 0x00                     ; TimeDateStamp
dd 0x00                     ; PointerToSymbolTable
dd 0x00                     ; NumberOfSymbols
dw 0x70                     ; SizeOfOptionalHeader (112)
dw 0x02                     ; Characteristics (IMAGE_FILE_EXECUTABLE_IMAGE)
dw 0x020B                   ; Magic (PE32+)
db 0x00                     ; MajorLinkerVersion
db 0x00                     ; MinorLinkerVersion
dd 0x0200                   ; SizeOfCode (512)
dd 0x00                     ; SizeOfInitializedData
dd 0x00                     ; SizeOfUninitializedData
dd 0x1000                   ; AddressOfEntryPoint (4096)
dd 0x1000                   ; BaseOfCode (4096)
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
dd 0x00                     ; LoaderFlags
dd 0x00                     ; NumberOfRvaAndSizes
dq 0x747865742E             ; Name (.text)
dd 0x00                     ; VirtualSize
dd 0x1000                   ; VirtualAddress (4096)
dd 0x0200                   ; SizeOfRawData (512)
dd 0x0200                   ; PointerToRawData (512)
dd 0x00                     ; PointerToRelocations
dd 0x00                     ; PointerToLinenumbers
dw 0x00                     ; NumberOfRelocations
dw 0x00                     ; NumberOfLinenumbers
dd 0x60000020               ; Characteristics (IMAGE_SCN_CNT_CODE, IMAGE_SCN_MEM_EXECUTE, IMAGE_SCN_MEM_READ)
times 1024 - ($ - $$) db 0
