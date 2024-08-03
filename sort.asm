sort:
    addi $sp, $sp, -20

    sw $ra, 16($sp)
    sw $s0, 12($sp)
    sw $s1, 8($sp)
    sw $s2, 4($sp)
    sw $s3, 0($sp)

    move $s2, $a0
    move $s3, $a1

    move $s0, $zero
loop_1:
    slt $t0, $s0, $s3
    beq $t0, $zero, exit_1

    addi $s1, $s0, -1
loop_2:
    slt $t0, $s1, $zero
    bne $t0, $zero, exit_2
    sll $t0, $s1, 2
    add $t0, $t0, $s2

    lw $t1, 0($t0)
    lw $t2, 4($t0)

    slt $t0, $t2, $t1
    beq $t0, $zero, exit_2

    move $a0, $s2
    move $a1, $s1
    jal swap

    addi $s1, $s1, -1
    j loop_2
exit_2:
    addi $s0, $s0, 1
    j loop_1
exit_1:
    lw $ra, 16($sp)
    lw $s0, 12($sp)
    lw $s1, 8($sp)
    lw $s2, 4($sp)
    lw $s3, 0($sp)

    add $sp, $sp, 20
    jr $ra
