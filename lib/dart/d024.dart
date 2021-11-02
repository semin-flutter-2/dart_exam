void main() {
  print(exam(60, 90));
  print(exam(45, 45));
}

/// 삼각형에서 두 각 [a], [b]가 주어질 때 나머지 각
int exam(int a, int b) {
  int result = 0;

  // 삼각형의 내각의 합
  int sumTriangle = 180;

  result = sumTriangle - (a + b);

  return result;
}


