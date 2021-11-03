void main() {
  introduceOneself();

  email('제목', 'aaa@aaa.com', 'test');
}

void email(String title, String address, String text) {
  print('''
$title 에 아래의 메일을 송신한다.
제목 : $address
본문 : $text
  ''');
}

void introduceOneself() {
  String name = '오준석';
  int age = 41;
  double height = 174.0;
  String gender = '남';

  print('저는 $name입니다. $age살 이고요, 키는 ${height}Cm이고 $gender자입니다');
}