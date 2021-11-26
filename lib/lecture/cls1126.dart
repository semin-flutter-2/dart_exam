
void main() {

  final items = [5, 3, 1, 2, 4];

  items.sort((a, b) {
    if (a < b) {
      return 1;
    } else if (a > b) {
      return -1;
    } else {
      return 0;
    }
  });

  print(items);

  // transactions.sort((a, b) {
  //   if (a.year < b.year) {
  //     return -1;
  //   } else if (a.year > b.year) {
  //     return 1;
  //   } else {
  //     return 0;
  //   }
  // });

  transactions.sort();
  transactions.sort((a, b) => -a.year.compareTo(b.year));
  print(transactions.map((e) => e.year));
}


class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  @override
  String toString() {
    return 'Trader{name: $name, city: $city}';
  }
}

class Transaction implements Comparable<Transaction> {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() {
    return 'Transaction{trader: $trader, year: $year, value: $value}';
  }

  @override
  int compareTo(Transaction other) {
    // if (year < other.year) {
    //   return -1;
    // } else if (year > other.year) {
    //   return 1;
    // } else {
    //   return 0;
    // }
    return year.compareTo(other.year);
  }
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];