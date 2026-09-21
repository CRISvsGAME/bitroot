bits 64

dw 0x5A4D                   ; DOS Signature (MZ)
times 0x3C - ($ - $$) db 0
dd 0x40                     ; PE Header Offset
dd 0x4550                   ; PE Signature (PE\0\0)
dw 0x8664                   ; Machine (AMD64)
dw 0x01                     ; NumberOfSections (1)
dd 0x00                     ; TimeDateStamp (0)
times 1024 - ($ - $$) db 0
