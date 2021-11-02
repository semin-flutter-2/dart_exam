void main() {
  print(add(3, 5, 3, 3, 4));
  print(add(3, 5));
  print(add2(3, 5, d: 3, e: 4, c: 10));
  print(add2(3, 5, c: 3));

  print(introduceSelf(name: '오준석', age: 10));
  print(introduceSelf(age: 10, name: '오준석'));
  print(introduceSelf2('오준석', 10));

  print(introduceSelf(name: '오준석', age: 10));
}

String introduceSelf({
  String name,
  int age,
}) {
  return '저는 $name이고 $age살입니다';
}

String introduceSelf2(String name, int age) {
  return '저는 $name이고 $age살입니다';
}

// Optional parameters
int add(int a, int b, [int c = 0, int d = 0, int e = 0]) {
  return a + b + c + d + e;
}

// named parameter
int add2(int a, int b, {int c = 0, int d = 0, int e = 0}) {
  return a + b + c + d + e;
}
