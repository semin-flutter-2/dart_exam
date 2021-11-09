String spinWords(String str) {
  List<String> strList = str.split(' ');
  return strList.map((e) {
    if (e.length >= 5) {
      return e.split('').reversed.join();
    }
    return e;
  }).join(' ');
}