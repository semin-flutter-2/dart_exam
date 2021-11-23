// 객체지향 3가지 특성, 상속(Inherited), 캡슐화(Encapsulation), 다형성(Polymorphism)

// 상속 : 이미 만든 클래스가 있고, 이거랑 조금 다른 클래스 만들 때
// 비슷한 클래스를 복사 붙여넣기로 만들면 사람이 실수해서 잘못될 여지가 있다


void main() {
  Hero hero = Hero(name: '슈퍼맨');
  SuperHero superHero = SuperHero(name: '배트맨', hp: 100, team: '어벤저스');
  SuperUltraHero superUltraHero = SuperUltraHero(name: '아이언맨');

  Dog dog = Dog();

  hero.attack(dog);   // 1
  superHero.attack(dog);    // 2
  superUltraHero.attack(dog);   //

  superHero.fly();
}

class Dog {
}

class Character {
  String name;
  int hp;

  Character({this.name, this.hp});
}

class Hero extends Character {

  Hero({String name, int hp}) : super(name: name, hp: hp);

  void attack(Dog dog) {
    // 공격
    print('멋지게 공격!!');
  }
}

// SuperHero : sub class (자식 클래스)
// Hero : super class (부모 클래스)
class SuperHero extends Hero {
  String team;

  SuperHero({String name, int hp, this.team}) : super(name: name, hp: hp);

  // @로 시작하는 것 : Annotation
  // 슈퍼클래스의 메서드를 재정의(override, 수정)했다고 표시하는 역할
  @override
  void attack(Dog dog) {
    print('$name은 나는 더 멋지게 공격!!');
  }

  void fly() {
    // 날라~
  }
}

class SuperUltraHero extends SuperHero {

  SuperUltraHero({String name, int hp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    print('공격 준비!!!!');
    super.attack(dog);  // super 클래스의 attack메서드를 호출
    print('워어어어!!!');
  }

  void run() {

  }
}

// is a 원칙
//