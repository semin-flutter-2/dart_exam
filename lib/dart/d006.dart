void main() {
  print(exam(1, 'km'));
  print(exam(54, 'km'));
  print(exam(2, 'cm'));
  print(exam(12, 'mmm'));
}

int exam(int n, String s) {
  int result = 0;

  if (s == 'km') {
    result = n * 1000000;
  } else if (s == 'm') {
    result = n * 1000;
  } else if (s == 'cm') {
    result = n * 10;
  } else {
    throw Exception('잘못된 단위 입력');
  }

  return result;
}
