import 'dart:math';

void main() {
  int a = 12;
  int b = 10;
  int c = 9;
  int d = 6;
  int e = 3;

  MyMaxMin myMaxMin = MyMaxMin(); // 인스턴스화

  print(myMaxMin.myMax(a, b, c, d, e));
  print(myMaxMin.myMin(a, b, c, d, e));
}

class MyMaxMin {
  int myMax(int a, int b, int c, int d, int e) {
    return max(max(max(max(a, b), c), d), e);
  }

  int myMin(int a, int b, int c, int d, int e) {
    return min(min(min(min(a, b), c), d), e);
  }
}
