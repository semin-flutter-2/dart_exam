import 'dart:convert';
import 'dart:io';

void main() {
  List<int> inputs = [];

  inputs.add(int.parse(stdin.readLineSync(encoding: utf8)));
  inputs.add(int.parse(stdin.readLineSync(encoding: utf8)));
  inputs.add(int.parse(stdin.readLineSync(encoding: utf8)));
  inputs.add(int.parse(stdin.readLineSync(encoding: utf8)));

  print(solve(inputs));
}

int solve(List<int> inputs) {
  final cards = [1, 2, 3, 4, 5];

  for (int i = 0; i < inputs.length; i++) {
    int num = inputs[i];
    cards.remove(num);
  }

  return cards.first;
}