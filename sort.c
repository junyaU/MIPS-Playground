void sort(int v[], int n) {
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = i - 1; j >= 0 && v[j] > v[j + 1]; j--) {
      swap(v, j);
    }
  }
}

// v, n = $a0, $a1
// i, j = $s0, $s1
