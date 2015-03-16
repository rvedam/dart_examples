// Copyright (c) 2015, Ram Vedam. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dart_examples/dart_examples.dart' as dart_examples;

//main() {
//  print('Hello world: ${dart_examples.calculate()}!');
//  assert(mysum(1, 10, (x) => x) == sum(from: 1, to: 10, afun: (x) => x));
//  
//}

//main(args) {
//  print(args.length);
//}

typedef num AdderFunc(num a, num b);

AdderFunc createAdder(num a) {
  Function adder = (num x, [num b]) {
    return x + b;
  };
  
  return adder(a);
}

main(List<String> args) {
  print('number of arguments passed ${args.length}');
  var gym = new dart_examples.Gym();
  var dojo = new dart_examples.Dojo();
  var add2 = createAdder(2);
  print(add2(2));
  
  print('Exercising @ Gym');
  gym.pushUps();
  gym.preacherCurls();
  print('\n');
  
  print('Exercising @ Dojo');
  dojo.pushUps();
  dojo.tai_kyo_ku();
}