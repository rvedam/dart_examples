// Copyright (c) 2015, Ram Vedam. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The dart_examples library.
library dart_examples;

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
