// Copyright (c) 2015, Ram Vedam. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dart_examples/dart_examples.dart' as dart_examples;

class Point {
  num _x;
  num _y;
  num _z;
  
  num get X => _x;
  num get Y => _y;
  num get Z => _z;
}

// position parameters
main() {
  print('Hello world: ${dart_examples.calculate()}!');
  assert(mysum(1, 10, (x) => x) == sum(from: 1, to: 10, afun: (x) => x));
  
}
