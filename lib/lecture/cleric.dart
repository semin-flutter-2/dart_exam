import 'dart:math';

import 'package:dart_exams/lecture/cls1123_2.dart';

void main() {
  // 타입 변수명 = 값
  // int i = 10;
  // Cleric타입 cleric이름으로 = 클래릭을 만들자
  Cleric cleric = Cleric('이름', hp: 100, mp: 50);    // secondary constructor
  final cleric2 = Cleric('이름');
  final cleric3 = Cleric('우서');   // 기본 생정자 primary constructor
  

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

  print(Cleric.maxMp);
}

//// Top level ------------>



//// Top level <------------

class Cleric extends Character {
  //// Field, 전역, Global, Property ------------>
  // 전역 변수, Field, member 변수, Global 변수,

  // public
  String name;
  int hp;
  int mp;
  Staff staff;

  static const int maxHp = 50;   // 4byte
  static const int maxMp = 10;   // 4byte

  // private
  final Random _random = Random();

  //// Field <------------

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

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

class Sword {
  int power;
}

class Staff {
  int power;
  int magicPower;
}