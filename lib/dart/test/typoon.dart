import 'dart:convert';

import 'dart:io';

void main() {
  List<int> inputs = [];
  for (int i = 0; i < 5; i++) {
    String line = stdin.readLineSync(encoding: utf8);
    inputs.add(int.parse(line));
  }

  for (int i = 0; i < inputs.length - 1; i++) {
    print(inputs[i + 1] - inputs[i]);
  }
}