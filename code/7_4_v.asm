assume cs:code ,ds:data

data segment

    db 'Baxis'
    db 'Wicac'

data ends


code segment

    start:
        mov ax ,data
        mov ds ,ax
        mov bx,0

        mov cx,5
    s: mov al,0[bx]
       and al,11011111b
       mov 0[bx],al
       mov al,5[bx]
       or al,00100000b
       mov 5[bx],al
       inc bx
       loop s

       mov ax,4c00h
       int 21

code ends

end start


