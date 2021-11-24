void main() {
  Book book = Book('홍길동전', 1000, '빨강', '123123123');
}

abstract class Thing {
  double getWeight();
  void setWeight(double weight);
}

abstract class Asset {
  final String name;
  final int price;

  Asset(this.name, this.price);
}

// 유형자산
abstract class TangibleAsset extends Asset implements Thing {
  final String color;
  double _weight;

  TangibleAsset(String name, int price, this.color) : super(name, price);

  @override
  double getWeight() {
    return _weight;
  }

  @override
  void setWeight(double weight) {
    _weight = weight;
  }
}

class Book extends TangibleAsset {
  final String isbn;

  Book(String name, int price, String color, this.isbn)
      : super(name, price, color);
}

class Computer extends TangibleAsset {
  final String makerName;

  Computer(String name, int price, String color, this.makerName)
      : super(name, price, color);
}
