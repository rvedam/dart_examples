/**
 * Example program using enumerations. Enumeration Support is new in Dart 1.8
 */

enum Color {
  red,
  green,
  blue
}

void main() {
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);
  
  print(Color.values);

  List<Color> colors = Color.values;
  print(colors);
}