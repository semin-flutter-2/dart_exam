void main() {
  Player player1 = GamePlayer001(1);
  Player player256 = GamePlayer256(256);

  // print(check(player1));
  // print(check(player256));

  List<Terran> terranList = [
    Marin(),
    Meddic(),
  ];

  for (Terran terran in terranList) {
    if (terran is Attackable) {
      (terran as Attackable).attack();
      // 강제 캐스팅 : 타입 변환
    }
  }
}

abstract class Terran {}

abstract class Attackable {
  void attack();
}

class Marin extends Terran implements Attackable {
  @override
  void attack() {
    // TODO: implement attack
  }
}
class Tank extends Terran implements Attackable {
  @override
  void attack() {

  }
}
class Meddic extends Terran {}

bool check(Player player) {
  if (player is Host) {
    return true;
  }
  return false;
}

class GamePlayer001 extends Player implements Host, Creator {
  GamePlayer001(int number) : super(number);
}

class GamePlayer256 extends Player {
  GamePlayer256(int number) : super(number);
}

abstract class Player {
  int number;

  Player(this.number);
}

abstract class Host {}

abstract class Creator {}

class Soldier {
  String moyang = '세모';
}
