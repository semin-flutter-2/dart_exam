void main() {
  Slime slime = Slime();
  Monster monster = Slime();
  Wolf wolf = Wolf();

  slime.run();    //
  monster.run();    //
  wolf.run();


  // ----------------------------
  List<Monster> monsters = [
    slime,
    monster,
    wolf,
  ];

  for (final monster in monsters) {
    monster.run();
  }
}

abstract class Monster {
  void run() {
    print('몬스터는 도망갔다');   // 1
  }
}

class Slime extends Monster {
  @override
  void run() {
    print('슬라임은 슬금슬금 도망갔다');   // 2
  }
}

class Wolf extends Monster {

}