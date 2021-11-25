void main() {
  final List<int> items = [1, 2, 3, 4, 5];

  // void Function(int)
  items.forEach((int item) {
    // void Fuction(Object)
    print(item);
  });

  items.forEach((element) => print(element));

  items.forEach(print);

  items.forEach(myPrint);
}

void myPrint(int num) {
  print('이건 내프린트야 $num');
}