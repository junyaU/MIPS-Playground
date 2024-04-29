
for1:
    move $s0, $zero
    slt $t0, $s0, $a1
    beq $t0, $zero, exit1
    ; do something
    addi $s0, $s0, 1
    j for1

exit1:
