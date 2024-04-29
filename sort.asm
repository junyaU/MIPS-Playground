
for1:
    move $s0, $zero
    slt $t0, $s0, $a1
    beq $t0, $zero, exit1
for2:
    addi $s0, $s0, -1
    slti $t0, $s1, 0
    bne $t0, $zero, exit2
    sll $t1, $s1, 2
    add $t2, $t1, $a0
    lw $t3, 0($t1)
    lw $t4, 4($t1)
    slt $t0, $t4, $t3
    beq $t0, $zero, exit2
    move $a0, $s2
    move $a1, $s1
    jal swap
    add $s1, $s1, -1
    j for2
exit2:
    addi $s0, $s0, 1
    j for1

exit1:
    ; restore registers
    jr $ra
