.data
var1 : .byte 0b00110010
    .align
var2 : .byte 0b11000000
    .align

/* Variable var3 creada para ejercicio [P3:Pr1:a] */
var3 : .byte 0              /* Valor temporal */
    .align 

/* Variables creada para ejercicio [P3:Pr1:c] */
var4 : .word 0xddccbbaa
    .align
var5 : .word 0
    .align

.text
.global main

main :
    ldr r1, =var1           /* r1 <- &var1 */
    ldrsb r11, [r1]         /* r11 <- *r1 */

    ldr r2, =var2           /* r2 <- &var2 */
    ldrsb r12, [r2]         /* r12 <- *r2 */

    add r0, r11, r12        /* r0 <- r11 + r12 */
    
    /* Ejercicio [P3:Pr1:a] */
    ldr r3, =var3           /* r3 <- &var3 */
    strb r0, [r3]           /* r0 <- *r3 */

    /* Ejercicio [P3:Pr1:b] */
    strb r11, [r2]          /* *r2 <- r11 */
    strb r12, [r1]          /* *r1 <- r12 */

    /* Ejercicio [P3:Pr1:c] */
    ldr r7, =var4           /* r7 <- &var4 */
    /* Cargado puntero a ddccbbaa */
    ldr r9, =var5           /* r9 <- &var5 */
    /* Cargado segundo puntero (0) */

    ldrb r8, [r7]           /* r8 <- *r7 */
    /* Cargado aa */
    strb r8, [r9, #3]       /* *r9 + #3 <- r8 */
    /* Dejado aa */

    ldrb r8, [r7, #1]       /* r8 <- *r7 + #1 */
    /* Cargado bb */
    strb r8, [r9, #2]       /* *r9 + #2 <- r8 */
    /* Dejado bb */

    ldrb r8, [r7, #2]       /* r8 <- *r7 + #2 */
    /* Cargado cc */
    strb r8, [r9, #1]       /* *r9 + #1 <- r8 */
    /* Dejado cc */

    ldrb r8, [r7, #3]       /* r8 <- *r7 + #3 */
    /* Cargado dd */
    strb r8, [r9]           /* *r9 <- r8 */
    /* Dejado dd */
bx lr 
