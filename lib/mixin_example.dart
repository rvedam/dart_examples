/**
 * Example of using classes, mix-ins, and interfaces in Dart
 */

library dart_examples.mixins;

import 'dart:math';
import 'dart_examples.dart' as utils;

// Generic Point class
class Point {
  num x;
  num y;
  num z;
  
  Point(this.x, this.y, this.z);
  operator +(Point rhs) => new Point(x + rhs.x, y + rhs.y, z + rhs.z); 
  distanceTo(Point dest) => 
      sqrt(utils.square(x - dest.x) + utils.square(y - dest.y) + utils.square(z - dest.z));
}

