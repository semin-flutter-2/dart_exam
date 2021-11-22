import 'dart:convert';
import 'dart:io';

void main() {
  List<String> line = stdin.readLineSync(encoding: utf8).split(' ');

  int N = int.parse(line[0]);
  int M = int.parse(line[1]);

  print(solve(N, M));

  if (solve2(N, M)) {
    print('YES');
  } else {
    print('NO');
  }
}

String solve(int n, int m) {
  String result = "NO";

  // bool isNzzak = n % 2 == 0;
  // bool isNhol = n % 2 == 1;
  //
  // bool isMzzak = m % 2 == 0;
  // bool isMhol = m % 2 == 1;

  // n.isEven != m.isOdd
  if (n.isEven && m.isOdd || n.isOdd && m.isEven) {
    result = "YES";
  }

  return result;
}

bool solve2(int n, int m) => n.isEven != m.isOdd;

class SelectNum {
  String oddEvenReader(int n, int m) {
    String result = 'YES';

    if (!(n % 2 == 0 && m % 2 == 1 || n % 2 == 1 && m % 2 == 0)) {
      result = 'NO';
    }

    return result;
  }
}

class OddEven {
  //교수님 다음과 같은 오류라고 나오는데 궁금합니다 ^_^
//다트 오류: 같음 표현식은 다른 같음 표현식의 피연산자가 될 수 없습니다.
  String share(int m, int n) {
    if (m % 2 == 0 && n % 2 == 0) {
      return 'yes';
    } else {
      return 'no';
    }
  }
}
