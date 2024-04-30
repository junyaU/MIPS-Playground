clear_1:
    move $t0, $zero
loop:
    sll $t1, $t0, 2
    add $t1, $t1, $a0
    sw $zero, 0($t1)

    addi $t0, $t0, 1
    slt $t2, $t0, $a1
    bne $t1, $zero, loop
