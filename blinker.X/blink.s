    .global main 
rjmp main  
    
main:
    nop 
    ldi r17, 1
    
    ldi r20, 8
    mov r0, r20
    rcall writeDDRB
    
    rjmp delay_loop
    
    ldi r20, 0
    f
    mov r0, r20
    rcall writeDDRB
    
    rjmp main
    

delay:
    clr r16
    ret
    
    
delay_loop:
    clr r16
    nop 
    nop 
     
    inc r16
    cp r16, r17
    brlt delay_loop
    ret
    
    
/* Writes the value in R0 to DDRB */
writeDDRB:
    out 0x17,r0
    ret 
    
PORTB:
    out 0x18,r21
    ret