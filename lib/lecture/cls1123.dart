void main() {

  MissileTurret turret1 = MissileTurret(x: 1, y: 1, distance: 10, hp: 100);
  MissileTurret turret2 = MissileTurret(x: 10, y: 50, distance: 10, hp: 100);
  MissileTurret turret3 = MissileTurret(x: 30, y: 40, distance: 10, hp: 100);


  Minion minion1 = Minion(x: 1, y: 2, hp: 100, power: 5);
  Minion minion2 = Minion(x: 1000, y: 1000, hp: 100, power: 5);

  List<Minion> minions = [minion1, minion2];
  print(minion1.hashCode);
  print(minion2.hashCode);

  print('-----------------');

  turret1.scan(minions);
}

bool isRanged(int x, int y, int x2, int y2, int radius) {
  return (x - x2) * (x - x2) + (y - y2) * (y - y2) >= radius * radius;
}

class TurretHead {
  int degree;
}

class MissileTurret {
  TurretHead head;

  int x;
  int y;
  int distance;
  int hp;
  int power = 50;

  MissileTurret({this.x, this.y, this.distance, this.hp});

  void scan(List<Minion> minions) {
    for (Minion minion in minions) {
      bool result = isRanged(x, y, minion.x, minion.y, distance);
      if (result) {
        fire(minion);
      }
    }
  }

  void fire(Minion minion) {
    minion.hp -= power;
    print('${minion.hashCode} 가 맞았음');
  }
}

class Minion {
  int x;
  int y;

  int hp;
  final int power;

  Minion({this.x, this.y, this.hp, this.power});

  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void attack(MissileTurret turret) {
    turret.hp -= power;
  }
}

