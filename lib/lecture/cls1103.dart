import 'dart:math';

void main() {
  introduceOneself();

  email(title: '제목', address: 'aaa@aaa.com', text: 'test');
  email(address: 'aaa@aaa.com', text: 'test');
}

double calcCircleArea(double radius) {
  // return 3.14 * radius * radius;
  // return 3.14 * pow(radius, 2);
  return pi * pow(radius, 2);
}

double calcTriangleArea(double bottom, double height) {
  double result = 0.0;

  result = bottom * height / 2;

  return result;
}

void email({String title = '제목 없음', String address, String text}) {
  print('''
$address 에 아래의 메일을 송신한다.
제목 : $title
본문 : $text
  ''');
}

void introduceOneself() {
  // 용사
  String name = '오준석';
  int age = 41;
  double height = 174.0;
  String gender = '남';

  print('저는 $name입니다. $age살 이고요, 키는 ${height}Cm이고 $gender자입니다');

  // 나쁜놈1
  String name2 = '오준석';
  int age2 = 41;
  double height2 = 174.0;
  String gender2 = '남';

  print('저는 $name2입니다. $age2살 이고요, 키는 ${height2}Cm이고 $gender2자입니다');
}

