void main() {
  // 타입 변수명 = 값
  // int i = 10;
  // Cleric타입 cleric이름으로 = 클래릭을 만들자
  Cleric cleric = Cleric(name: '이름', hp: 100, mp: 50);
  final cleric2 = Cleric(name: '이름');
  final cleric3 = Cleric();

  print(cleric.hp);
}

class Cleric {
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    mp = mp - 5;
    hp = maxHp;
  }
}
