section .data
    msg db 'Gustavo', 0xA, 0   ; Mensagem a ser impressa com quebra de linha

section .text
    global _start

_start:
    ; escreve a string para o stdout
    mov eax, 4            ; número da chamada do sistema (sys_write)
    mov ebx, 1            ; descritor de arquivo 1 é stdout
    mov ecx, msg          ; ponteiro para a mensagem
    mov edx, 8            ; comprimento da mensagem (Gustavo + \n)
    int 0x80              ; chama o kernel

    ; sai
    mov eax, 1            ; número da chamada do sistema (sys_exit)
    xor ebx, ebx          ; código de saída 0
    int 0x80              ; chama o kernel
