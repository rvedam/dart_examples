// Copyright (c) 2015, Ram Vedam. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import '../lib/dart_examples.dart' as dart_examples;

//main() {
//  print('Hello world: ${dart_examples.calculate()}!');
//  assert(mysum(1, 10, (x) => x) == sum(from: 1, to: 10, afun: (x) => x));
//
//}

//main(args) {
//  print(args.length);
//}

typedef num AdderFunc(num a, num b);

//
// example of closures
//
// This example creates generic adders that take in an argument
// and returns an anonymoous function that takes in a argument and returns the sum of
// that argument and the internal argument was "wrapped into" the function when it was
// constructed.
//
Function createAdder(num a) {
  return ((num x) => x + a);
}

void main(List<String> args) {
  // uses string interpolation to evaluate expression and auto convert to a string.
  print('number of arguments passed ${args.length}');
  try {
    var add2 = createAdder(2);
    print(add2(2));
  } catch(e) {
    print('Error found');
  }
  print('-------------------------------\n');
  print('Mixin example\n');
  print('-------------------------------\n');
  var gym = new dart_examples.Gym();
  var dojo = new dart_examples.Dojo();
  print('Exercising @ Gym');
  gym.pushUps();
  gym.preacherCurls();
  print('\n');

  print('Exercising @ Dojo');
  dojo.pushUps();
  dojo.tai_kyo_ku();
  print('\n');
}
