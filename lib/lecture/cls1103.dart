void main() {
  introduceOneself();

  email(title: '제목', address: 'aaa@aaa.com', text: 'test');
  email(address: 'aaa@aaa.com', text: 'test');
}

void email({String title, String address, String text}) {
  String titleResult = title;

  if (title == null) {
    titleResult = '제목 없음';
  }

  print('''
$address 에 아래의 메일을 송신한다.
제목 : $titleResult
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