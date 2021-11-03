import 'package:dart_exams/lecture/person.dart';

void main() {
  final person = Person('오준석', 41, 174, '남자');
  final person2 = Person('홍길동', 20, 180, '남자');
  final person3 = Person('한석봉', 25, 150, '남자');
  final meshi = Person('메시', 25, 150, '남자');

  // final meshi = Meshi();
  final meshi2 = Meshi();
  final meshi3 = Meshi();

  print(person.introduce());
  print(person2.introduce());
  print(person3.introduce());

  print(person.name); // 오준석

  person.name = "김준석";

  print(person.name); // 김준석

}

