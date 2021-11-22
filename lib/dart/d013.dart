import 'dart:convert';
import 'dart:io';

void main() {
  String input = stdin.readLineSync(encoding: utf8);  // 10 3

  List<String> inputs = input.split(' ');

  int m = int.parse(inputs[0]);
  int n = int.parse(inputs[1]);

  ShareRemainder shareRemainder = ShareRemainder();
  
  print('${shareRemainder.share(m, n)} ${shareRemainder.remainder(m, n)}');

}

class ShareRemainder {
  int share(int m, int n) {
    return m ~/ n;
  }

  int remainder(int m, int n) {
    return m % n;
  }
}
