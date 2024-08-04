clear_1:
    move $t0, $zero
loop_1:
    slt $t1, $t0, $a1
    beq $t1, $zero, exit_1

    sll $t2, $t0, 2
    add $t2, $t2, $a0
    sw $zero, 0($t2)

    addi $t0, $t0, 1
    j loop_1
exit_1:
    jr $ra

clear_2:
    move $t0, $a0

    sll $t1, $a1, 2
    add $t1, $t1, $t0
loop_2:
    slt $t2, $t0, $t1
    beq $t2, $zero, exit_2

    sw $zero, 0($t0)
    addi $t0, $t0, 4
    j loop_2
exit_2:
    jr $ra
