void main() {
  Hero hero = Hero();
  Wizard wizard = Wizard();

  Dog dog = Dog();

  hero.attack(dog);
  wizard.attack(dog);

  // 신입2
  // Character superMan = Character(name: '슈퍼맨', hp: 100);
  // superMan.attack(dog);
}

// 추상 클래스 : 미완성 클래스
// 일부 기능이 미구현되어 됨
abstract class Character {
  String name;
  int hp;

  Character({this.name, this.hp});

  // 추상 메서드
  void attack(Dog dog);
}

class Dog {
  int hp = 100;
}

class Hero extends Character {

  Hero({String name, int hp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    // 공격
    print('멋지게 공격!!');
    dog.hp -= 10;
    print('Hero 10만큼 데미지를 주었습니다.');
  }
}

class Wizard extends Character {
  int mp;

  Wizard({String name, int hp, this.mp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    dog.hp -= 5;
    print('Wizard 5만큼 데미지를 주었습니다.');
  }
}