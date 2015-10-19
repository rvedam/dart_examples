// Copyright (c) 2015, Ram Vedam. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library all_tests;

import 'dart_examples_test.dart' as dart_examples_test;
import 'class_examples_test.dart' as class_examples_test;

void main() {
  dart_examples_test.defineTests();
  class_examples_test.defineTests();
}
