// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dart_examples_test;

import 'package:dart_examples/dart_examples.dart';
import 'package:unittest/unittest.dart';

void main() => defineTests();

void defineTests() {
  group('main tests', () {
    test('calculate', () {
      expect(calculate(), 42);
    });
    test('myequal', () {
      expect(myequal(4,4), true);
      expect(myequal(3,4), false);
    });
    
  });
}
