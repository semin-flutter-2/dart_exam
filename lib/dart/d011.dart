void main() {
  Alphabet alphabet = Alphabet();

  print(alphabet.getIndex('C'));
  print(alphabet.getIndex('X'));
}

class Alphabet {
  int getIndex(String char) {
    String word = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    return word.indexOf(char) + 1;
  }
}
