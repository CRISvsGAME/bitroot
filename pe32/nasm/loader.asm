bits 64

dw 0x5A4D                   ; DOS Signature (MZ)
times 1024 - ($ - $$) db 0
