strcpy:
    add $t0, $a0, $zero
    add $t1, $a1, $zero

strcpy_loop:
    lbu $t2, 0($t1)
    sb $t2, 0($t0)
    addiu $t0, $t0, 1
    addiu $t1, $t1, 1
    bne $t2, $zero, strcpy_loop

    jr $ra
