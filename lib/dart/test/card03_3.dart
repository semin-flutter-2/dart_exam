import 'dart:io';

// 1 2 3 (4) 5
void main() {

  int cardSum = 1 + 2 + 3 + 4 + 5;

  for (int i = 0; i < 4; i++) {
    int pickNum = int.parse(stdin.readLineSync());
    cardSum -= pickNum;
  }

  print(cardSum);

}
