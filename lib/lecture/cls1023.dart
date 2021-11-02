void main() {
  int a = 10;
  int b = 5;

  // 조건문 >, >=, ==, !=, <=, <
  if (a < b) {  // 조건식은 true, false 값이 와야 됨
    print(a);
  } else if (a == b) {
    print('같음');
  } else {
    print(b);
  }

  switch (a) {
    case 10:
      print('10이요');
      break;
    case 5:
      print('5이요');
      break;
    default:
      print('10도 5도 아니에');
  }
}

