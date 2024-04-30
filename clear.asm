clear_1:
    move $t0, $zero
loop_1:
    sll $t1, $t0, 2
    add $t1, $t1, $a0
    sw $zero, 0($t1)

    addi $t0, $t0, 1
    slt $t2, $t0, $a1
    bne $t1, $zero, loop_1

clear_2:
    move $t0, $a0
    sll $t1, $a1, 2
    add $t1, $t1, $a0
loop_2:
    sw $zero, 0($t0)
    addi $t0, $t0, 4
    slt $t2, $t0, $t1
    bne $t2, $zero, loop_2
