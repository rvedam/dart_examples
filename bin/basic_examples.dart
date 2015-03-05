// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dart_examples/dart_examples.dart' as dart_examples;

// no types
reduce(from, to, afun) {
  var result = 0.0;
  for(var i = from; i < to; i++) {
    result += afun(i);
  }
  return result;
}

// optionally named parameters
num sum({int from, int to, Function afun}) {
  var result = 0.0;
  for (int i = from; i < to; i++) {
    result += afun(i);
  }
  return result;
}

// example of function with positional arguments
num mysum(int from, int to, [Function afun]) {
  num result = 0.0;
  var fun;
  if (afun != null) {
    fun = afun;
  }
  for (int i = from; i < to; i++) {
    result += fun(i);
  }

  return result;
}

void setTaskProcessState(String state) {
  switch(state) {
    case 'OPEN':
      print('task is still open!');
      break;
    case 'PROCESSING':
      print('processing task...');
      break;
    case 'CLOSED':
      print('Closing task...');
      continue nowClosed;
    nowClosed:
      case 'NOW_CLOSED':
        print('task is now closed');
        break;
    default:
      print('unrecognizable state');
  }
}

class Point {
  num _x;
  num _y;
  num _z;
  
  num get X => return _x;
}

// position parameters
main() {
  print('Hello world: ${dart_examples.calculate()}!');
  assert(mysum(1, 10, (x) => x) == sum(from: 1, to: 10, afun: (x) => x));
  
}
