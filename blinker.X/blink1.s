    .global main 
    
main1:
    ldi r20, 8
    mov r0, r20
    rcall writeDDRB
    
main:
    ldi r17, 255
    ldi r22, 0
    ldi r21, 8
    rcall writePORTB
    rcall delay
    ldi r17, 255
    mov r21, r22
    rcall writePORTB
    rcall delay
    
    rjmp main
    

delay:
    clr r16
    rjmp delay_loop
    
    delay_loop:
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
    
writePORTB:
    out 0x18,r21
    ret