import 'dart:convert';
import 'dart:io';

void main() {
  String s = stdin.readLineSync(encoding: utf8);

  if (s.length >= 11) {
    print('OK');
  } else {
    print(11 - s.length);
  }
}

class CollectCal {
  String count(List<String> inputs) {
    String result = '';
    if (inputs.length >= 11) {
      result = 'OK';
    } else {
      int num = 11 - inputs.length;
      result = '$num';
    }
    return result;
  }
}