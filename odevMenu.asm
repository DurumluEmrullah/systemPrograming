; multi-segment executable file template.

data segment
    ilkString db "Dil Secimi (Language Selection) (E) for English ,Turkce icin(T)$"
    turkceMenu1 db "1-Sayi yazi donusumu$"
    turkceMenu2 db "2-Yazi sayi donusumu$"
    turkceMenu3 db "3-Yazi ile islem$"
    turkceMenu3_1 db "1-Toplama$"
    turkceMenu3_2 db "2-Cikarma$"
    turkceMenu3_3 db "3-Carpma$"
    
    ingilizceMenu1 db "1-Number to text conversion$"
    ingilizceMenu2 db "2-Text to Number conversion$"
    ingilizceMenu3 db "3-Text operation$"
    ingilizceMenu3_1 db "1-Addition$"
    ingilizceMenu3_2 db "2-Subtraction$"
    ingilizceMenu3_3 db "3-Multiplication$" 
    
    SECIM DB ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
   
    atla2:
    
    mov ah,09
    lea dx,ilkString
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
              
    mov ah,01
    int 21h  
    
    MOV SECIM,AL 
    
    cmp SECIM,'T'  
    
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    jz turkce
    jmp atla
    
    turkce:
    mov ah,09
    lea dx,turkceMenu1
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h   
    
    mov ah,09
    lea dx,turkceMenu2
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,turkceMenu3
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,turkceMenu3_1
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,turkceMenu3_2
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,turkceMenu3_3
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    jmp atla3:
    
    atla:   
    
    cmp SECIM,'E' 
    
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    jz ingilizce
    
    jmp atla2
    
    
    
    ingilizce:
    
    mov ah,09
    lea dx,ingilizceMenu1
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h   
    
    mov ah,09
    lea dx,ingilizceMenu2
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,ingilizceMenu3
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,ingilizceMenu3_1
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,ingilizceMenu3_2
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    mov ah,09
    lea dx,ingilizceMenu3_3
    int 21h
     
    mov ah,02          
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    
    
    atla3:
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
