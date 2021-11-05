import 'dart:math';

void main() {
  // 타입 변수명 = 값
  // int i = 10;
  // Cleric타입 cleric이름으로 = 클래릭을 만들자
  Cleric cleric = Cleric(name: '이름', hp: 100, mp: 50);
  final cleric2 = Cleric(name: '이름');
  final cleric3 = Cleric();

  // 상수 const, final
  // final 런타임 상수 : 실행 중에 결정되는 메모리
  // const 컴파일 상수 : 컴파일 중에 결정되는 메모리
  const int count = 100;

  int sum = 0;
  for (int i = 0; i < count; i++) {
    cleric.mp = 5;
    print('회복량: ${cleric.pray(1)}, 현재 mp: ${cleric.mp}'); // 1~3
    sum += cleric.pray(1);
  }
  print('회복량 평균 : ${sum / count}');
}

class Cleric {
  // public
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  // private
  final Random _random = Random();

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    mp = mp - 5 + _random.nextInt(5);
    hp = maxHp;
  }

  int pray(int sec) {
    int curMp = mp;
    mp = min(sec + Random().nextInt(3) + mp, maxMp);

    // 실제로 회복된 mp 양 리턴
    return mp - curMp;
  }
}
