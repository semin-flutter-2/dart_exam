import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync());

  List<String> ipAddresses = [];
  for (int i = 0; i < num; i++) {
    ipAddresses.add(stdin.readLineSync());
  }

  final regExp = RegExp(r'\b(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9])\.){3}(?:(?:2([0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9]))\b');

  ipAddresses.forEach((address) {
    if (regExp.hasMatch(address)) {
      print('True');
    } else {
      print('False');
    }
  });
}
