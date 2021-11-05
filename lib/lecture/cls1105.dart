void main() {
  Word word = Word('My name is junsuk');

  print(word.isVowel(4)); // 모음이 아니라서 false


  print(word.isVowel(0)); // true
  print(word.isVowel(1)); // false
  print(word.isVowel(2)); // false
  print(word.isVowel(3)); // false
  print(word.isVowel(4)); // true

  print('abc'.substring(0, 1));   // a
  print('abc'.substring(1, 2));   // b
  print('abc'.substring(2, 3));   // c

  print('asdf'.split(''));

  bool isMarried = true;

  print(!isMarried);
}

// 문자열을 가지고 있는 클래스
class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true // a, i, u, e, o
  bool isVowel(int i) {
    return 'aiueoAIUEO'.contains(letters.substring(i, i + 1));
  }


  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    return !isVowel(i);
  }
}