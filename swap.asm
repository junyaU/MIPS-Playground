swap:
    add $t0, $t0, $zero ; initialize temp to 0
    sll $t1, $a1, 2 ; t1 = i
    add $t1, $t1, $a0 ; t1 = A + i

    lw $t0, 0($t1) ; temp = A[i]
    lw $t2, 4($t1) ; t2 = A[i + 1]

    sw $t2, 0($t1) ; A[i] = A[i + 1]
    sw $t0, 4($t1) ; A[i + 1] = temp

    jr $ra ; return
