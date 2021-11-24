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

  // 수정은 다른 애가 못하게 하자
  hero.hp = -200;

  // 읽기는 가능하게 하자
  print('${hero.name} 가 공격을 했습니다. ${hero.name}의 에너지는 ${hero.hp}');
}

class Dog {
}

class Character {
  // 일반적으로 수정 금지
  final String team = '어벤저스';

  // 내부적으로는 빈번하게 수정을 해야되지만 외부에는 수정 금지 getter
  String _name;
  String get name => _name;

  int _hp;

  int get hp => _hp;

  // 외부에서의 수정 권한을 조정할 때. 내가 정한 기준 내에서만 수정이 가능 하도록 setter
  set hp(int value) {
    if (value < 0) {
      _hp = 0;
    } else {
      _hp = value;
    }
  }

  Character({String name, int hp}) : _name = name;

}

class Hero extends Character {

  Hero({String name, int hp}) : super(name: name, hp: hp);

  void attack(Dog dog) {
    _name = '똥강아지';
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