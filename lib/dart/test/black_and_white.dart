import 'dart:convert';
import 'dart:io';

void main() {
  List<int> line = stdin
      .readLineSync(encoding: utf8)
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  int H = line[0];
  int W = line[1];

  Pixel pixel = Pixel();
  for (int i = 0; i < H; i++) {
    Row row = Row(row: []);
    List<int> rowLine = stdin
        .readLineSync(encoding: utf8)
        .split(' ')
        .map((e) => int.parse(e))
        .toList();
    for (int j = 0; j < W; j++) {
      row.add(rowLine[j]);
    }
    pixel.add(row);
  }

  Pixel convertedPixel = colorToBlackAndWhite(pixel);

  for (int i = 0; i < H; i++) {
    print(convertedPixel.column[i].row.join(' '));
  }
}

class Row {
  List<int> row = [];

  Row({this.row});

  void add(int num) {
    row.add(num);
  }
}

class Pixel {
  List<Row> column = [];

  void add(Row row) {
    column.add(row);
  }
}

Pixel colorToBlackAndWhite(Pixel pixel) {
  Pixel newPixel = Pixel();
  newPixel.column = pixel.column
      .map((row) => Row(row: row.row.map((num) => num >= 128 ? 1 : 0).toList()))
      .toList();
  return newPixel;
}
