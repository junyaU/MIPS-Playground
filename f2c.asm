f2c:
    lwc1  $f16, const5($gp)
    lwc1  $f18, const9($gp)
    div.s $f16, $f16, $f18
    lwc1  $f18, const32($gp)
    sub.s $f18, $f12, $f18
    mul.s $f0, $f18, $f16
    jr    $ra
