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

abstract class Animal {
  void sound();
}

abstract class HaveName {
  String getName();
}

class Dog implements Animal, HaveName {
  int hp = 100;

  @override
  void sound() {
    print('멍멍');
  }

  @override
  String getName() {
    return '멍멍이';
  }
}

class Hero extends Character implements Human, Bionic {

  Hero({String name, int hp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    // 공격
    print('멋지게 공격!!');
    dog.hp -= 10;
    print('Hero 10만큼 데미지를 주었습니다.');
  }

  @override
  void talk() {
    // TODO: implement talk
  }

  @override
  void breath() {
    // TODO: implement breath
  }

  @override
  void hear() {
    // TODO: implement hear
  }

  @override
  void run() {
    // TODO: implement run
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

// 미구현 기능만 있는 완벽한 미구현체 : Interface
abstract class Human {
  void talk();
  void hear();
}

abstract class Bionic {
  void breath();
  void run();
}

class Knight implements Human {

  @override
  void talk() {
    print('hi');
  }

  @override
  void hear() {
    // TODO: implement hear
  }
}

abstract class Car {
  void drive();
}

abstract class NormalCar implements Car {
  void changeGear(int gear);
  void inputGas(int gas);
}

abstract class ElectronicCar implements Car {
  void inputEnergy(int energy);
}

class Model3 extends Car {

  @override
  void drive() {
    // TODO: implement drive
  }

  @override
  void run() {
    // TODO: implement run
  }

}

class Sonata extends NormalCar {
  @override
  void changeGear(int gear) {

  }

  @override
  void drive() {

  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void inputGas(int gas) {
    // TODO: implement inputGas
  }
}
