import 'dart:math';

class Person {
  String name;
  int age;

  void speak() {
    print('내 이름은 $name');
  }

  void eat() {

  }
}

void main() {
  print(piEstimate(100000000));
}

double piEstimate(int tries) {
  double result = 0;

  int hits = 0;

  Random random = new Random();
  for (int i = 0; i < tries; i++) {
    // 다트가 꽂히는 좌표 x, y 를 랜덤한 값으로 정하되 범위는 -1 ~ 1 사이의 실수(double) 로 한다
    double x = random.nextDouble() * 2 - 1;
    double y = random.nextDouble() * 2 - 1;

    // (0, 0) (x, y)
    double distance = sqrt((x * x) + (y * y));
    if (distance < 1) {
      hits++;
    }
  }

  // 원주율
  result = 4 * hits / tries;

  return result;
}


