import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8));
  int b = int.parse(stdin.readLineSync(encoding: utf8));
  int c = int.parse(stdin.readLineSync(encoding: utf8));
  int d = int.parse(stdin.readLineSync(encoding: utf8));

  print(solve(a, b, c, d));
}

int solve(int a, int b, int c, int d) {
  final cards = [1, 2, 3, 4, 5];

  cards.remove(a);
  cards.remove(b);
  cards.remove(c);
  cards.remove(d);

  return cards.first;
}

class Findcard1 {
  String find(int a, int b, int c, int d) {
    String result = '';
    var items = {a, b, c, d};
    if (items.contains(1) == false) {
      result = '1';
    } else if (!items.contains(2)) {
      result = '2';
    } else if (items.contains(3) == false) {
      result = '3';
    } else if (!items.contains(4)) {
      result = '4';
    } else if (items.contains(5) == false) {
      result = '5';
    }
    return result;
  }
}
