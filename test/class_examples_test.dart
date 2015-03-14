/**
 * Test Suite for Mixin Examples
 */

library class_examples_tests;

import 'package:unittest/unittest.dart';
import 'package:dart_examples/dart_examples.dart' as de;

void main() => defineTests();

defineTests() {
  group('Class Example Tests', () {
    test('constructor tests', () {
      // testing constructor using factory method
      var pt = new de.Point(5,5,5);
      expect((pt == null), false);
      
      // test convenience constructors based on axis
      var pt2 = new de.Point.alongXAxis(3);
      var pt3 = new de.Point.alongYAxis(2);
      var pt4 = new de.Point.alongZAxis(1);
      
      expect(pt2.X == 3, true);
      expect(pt2.Y == 0, true);
      expect(pt2.Z == 0, true);
      
      expect(pt3.X == 0, true);
      expect(pt3.Y == 2, true);
      expect(pt3.Z == 0, true);

      expect(pt4.X == 0, true);
      expect(pt4.Y == 0, true);
      expect(pt4.Z == 1, true);      
    });
    test('addition operator test', () {
      
    });
  });
}