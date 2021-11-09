void main() {
  print(elementsAt("44445"));
  print(elementsAt("3335"));
}

String elementsAt(String input) {
  String result = input;
  String a = input.substring(0, 1);
  String b = input.substring(1, 2);
  String c = input.substring(2, 3);
  String d = input.substring(3, 4);
  if (a != b || b != c || c != d) {
    result = "No";
  }
  return result;
}



