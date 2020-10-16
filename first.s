.data
.text
.global main        /* 'main' is our entry point and must be global */

main:               /* This is main */
    moveqs r0, #2   /* Put a 2 inside the register r0 */
    bx lr           /* Return from main */


