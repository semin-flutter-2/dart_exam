void main() {
  List<String> names = ['Java', 'Gino', 'Alice'];
  exam(names);
}

void exam(List<String> names) {
  StringBuffer buffer = StringBuffer('Hello');

  for (int i = 0; i < names.length; i++) {
    print(buffer.hashCode);
    buffer.write([buffer.toString(), ' ', names[i]].join());

    if (i < names.length - 1) {
      buffer.write([buffer.toString(), ','].join());
    } else {
      buffer.write([buffer.toString(), '.'].join());
    }
  }

  print(buffer.toString());
}
