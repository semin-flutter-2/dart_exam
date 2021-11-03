// 어떤 객체를 표현하는 방법
class Person {
  // Property (속성)
  String name;
  int age;
  double height;
  String gender;

  final int maxAge = 100;

  // Constructor 생성자
  // 클래스를 생성하는 방법을 제공
  Person(this.name, this.age, this.height, this.gender);

  // 기능 (자기소개)
  String introduce() {
    return '저는 $name입니다. $age살 이고요, 키는 ${height}Cm이고 $gender입니다';
  }
}

class Meshi {
  void superDribble() {

  }
}