import 'dart:convert';

import 'dart:io';

void main() {
  int input1 = int.parse(stdin.readLineSync(encoding: utf8));
  String input2 = stdin.readLineSync(encoding: utf8);
  String input3 = stdin.readLineSync(encoding: utf8);
  String input4 = stdin.readLineSync(encoding: utf8);

  List<int> nums = [];
  for(int i = 0; i < 4; i++) {
    int input = int.parse(stdin.readLineSync(encoding: utf8));
    nums.add(input);
  }
}

class ExerciseSeq {
  String SequenceNum(int resultNum, int tolerance) {
    String result = '';
    List<int> sequence = [];

    for (int i = 0; i < 10; i++) {
      if (i == 0) {
        sequence.add(resultNum);
      } else {
        resultNum = resultNum + tolerance;
        sequence.add(resultNum);
      }
      result = result + sequence[i].toString() + ' ';
    }
    return result;
  }
}
