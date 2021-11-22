void main() {
  Dice dice = Dice(50);   // 기본 생성자 primary constructor

  print(dice.back(1));
}

class Dice {
  int num;

  Dice(this.num);

  int back(int n) {
    return num - n;
  }
}