 .global main //atmega88A
main:
    clr r16 //maxval 
    clr r17 //k
    ldi r18, 16 //n
    ldi r19, vector // int *arr
    
    rcall max_U16
    rjmp main
   
max_U16:
    
    
    

skip:
 
    
    .global vector

vector:
    .byte 7, 8, 100, 200, 88, 32, 150, 51, 2, 4, 12, 34, 10, 14, 19, 10


