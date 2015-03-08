part of dart_examples;

// example function
int calculate() {
  return 6 * 7;
}

// no types
reduce(from, to, afun) {
  var result = 0.0;
  for (var i = from; i < to; i++) {
    result += afun(i);
  }
  return result;
}

// typed function with optionally named parameters
num sum({int from, int to, Function afun}) {
  var result = 0.0;
  for (int i = from; i < to; i++) {
    result += afun(i);
  }
  return result;
}

// typed function with positional arguments
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

// mix-and-match example
product(int from, int to, {Function fun}) {
  var result = 1.0;
  for (var i = from; i < to; i++) {
    result *= fun(i);
  }
  return result;
}

square(num x) {
  return x * x;
}
