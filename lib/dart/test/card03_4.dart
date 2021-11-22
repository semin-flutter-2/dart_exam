import 'dart:io';

void main() {

  print('숫자를 입력하세요');
  int num = int.parse(stdin.readLineSync());
  while(num > 5) {
    print('숫자를 다시 입력하세요. (5 미만)');
    num = int.parse(stdin.readLineSync());
  }

  print(num);
}