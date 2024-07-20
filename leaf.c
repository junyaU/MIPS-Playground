int leaf(int g, int h, int i, int j) {
  int f;
  f = (g + h) - (i + j);
  return f;
}

// 引数のレジスタ: $a0, $a1, $a2, $a3
// 戻り値のレジスタ: $v0, $v1
// 戻り先のレジスタ: $ra
