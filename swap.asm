swap:
    sll $t0, $a1, 2
    add $t0, $t0, $a0
    
    lw $t1, 0($t0)
    lw $t2, 4($t0)

    sw $t2, 0($t0)
    sw $t1, 4($t0)

    jr $ra

; リーフ手続きのため、レジスタの退避・復帰は不要になる。
