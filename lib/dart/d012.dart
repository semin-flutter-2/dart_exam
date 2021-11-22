import 'dart:math';

/*
-100 부터 100까지 중 정수 n이 주어졌을 때 절대값을 구하시오
*/

void main() {
  int min = -100;
  int max = 100;
  Random rnd = Random();

  // 0 ~ 200 => -100 ~ 100
  int randomNum = min + rnd.nextInt(max - min);

  AbsNum absNum = AbsNum();

  print ('100 ~ -100 랜덤수 : $randomNum');
  print('절대값 결과 : ${absNum.findAbs(randomNum)}');
}

class AbsNum {
  int findAbs(int num) {
    if (num < 0) {
      num = num * -1;
    }
    return num;
  }
}