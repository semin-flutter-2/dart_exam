void main() {

  // 2단, 3단, 9단
  for (int dan = 2; dan <= 9; dan++) {
    printDan(dan);
    print('');
  }
}

void printDan(int dan) {
  for (int num = 1; num <= 9; num++) {
    print('$dan * $num = ${dan * num}');
  }
}

// dan * num =
// 2 * 1 = 2
// 2 * 2 = 4
// ...
// 2 * 9 = 18
//
// 3 * 1 = 3
