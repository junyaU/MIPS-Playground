fact:
    addi $sp, $sp, -8
    sw $a0, 0($sp)
    sw $ra, 4($sp)

    slti $t0, $a0, 1
    beq $t0, $zero, L1

    addi $v0, $zero, 1
    addi $sp, $sp, 8
    jr $ra

L1:
    addi $a0, $a0, -1
    jal fact

    lw $ra, 4($sp)
    lw $a0, 0($sp)
    addi $sp, $sp, 8
    mul $v0, $a0, $v0

    jr $ra
