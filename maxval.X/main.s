.global main //atmega88A
main:
    clr r16 //maxval 
    
    ldi r18,16 //n
    ldi r28,lo8(vector) // int *arr
    ldi r27,hi8(vector)//X register 
   
    clr r17 //k <- 0 
top_of_loop:
    st X,r17 // arr[k] (arr[r7] <- r17
    adiw r26,1 //X <- X+1
    inc r17
    cpi r17,5
    
    brlt top_of_loop
    
    rcall max_U16
    rjmp main
   
max_U16:
    
    ld r7,X // reads arr[k] to r7
    
    cp r7, r16 //compares r7 (arr[k]) to r16 (maxval)
    brlt skip // skips the following code if r7 (arr[k]) is less than r16 (maxval)
    
    mov r16, r7 // if r7 (arr[k]) is greater than r16 (maxval) then r16 (maxval) gets whatever was in r7 arr[k]
    adiw r26,1
    
    

    skip:
	
    .data
    .global vector
vector:
    .byte 7, 8, 100, 200, 88, 32, 150, 51, 2, 4, 12, 34, 10, 14, 19, 10


