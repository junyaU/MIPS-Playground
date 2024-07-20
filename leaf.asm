leaf:
    addi, $sp, $sp, -12
    sw $t1, 8($sp)
    sw $t0, 4($sp)
    sw $s1, 0($sp)

    add $t0, $a0, $a1
    add $t1, $a2, $a3
    sub $s1, $t0, $t1

    add $v0, $s1, $zero

    lw $t1, 8($sp)
    lw $t0, 4($sp)
    lw $s1, 0($sp)
    addi $sp, $sp, 12

    jr $ra
