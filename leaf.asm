leaf:
    addi, $sp, $sp, -4
    sw $s1, 0($sp)

    add $t0, $a0, $a1
    add $t1, $a2, $a3
    sub $s1, $t0, $t1

    add $v0, $s1, $zero

    lw $s1, 0($sp)
    addi $sp, $sp, 4

    jr $ra

; caller-saved registers: $t0, $t1, $t2, $t3, $t4, $t5, $t6, $t7, $t8, $t9
; callee-saved registers: $s0, $s1, $s2, $s3, $s4, $s5, $s6, $s7, $s8, $s9
