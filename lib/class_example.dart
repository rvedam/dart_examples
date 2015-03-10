/**
 * Example of using classes, mix-ins, and interfaces in Dart
 */

part of dart_examples;

class Point {
  num _x;
  num _y;
  num _z;

  static final Map<String, Point> _cache = <String, Point>{};

  Point._internal(this._x, this._y, this._z);

  // redirecting constructors
  Point.alongXAxis(num x) : this._internal(x, 0, 0);

  Point.alongYAxis(num y) : this._internal(0, y, 0);

  Point.alongZAxis(num z) : this._internal(0, 0, z);

  Point.fromJson(Map data)
      : _x = data['x'],
        _y = data['y'],
        _z = data['z'] {
  }

  factory Point(num x, num y, num z) {
    return new Point._internal(x, y, z);
  }

  // getters and setters
  num get X => _x;
  set X(num value) => _x = value;

  num get Y => _y;
  set Y(num value) => _y = value;

  num get Z => _z;
  set Z(num value) => _z = value;

  operator +(Point rhs) => new Point(X + rhs.X, Y + rhs.Y, Z + rhs.Z);

  num distance(Point dest) {
    var dx = X - dest.X;
    var dy = Y - dest.Y;
    var dz = Z - dest.Z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }
  
  Map<String, Object> toMap() {
    Map<String, num> data = <String, num> {
      "x": this.X,
      "y": this.Y,
      "z": this.Z
    };
    
    return data;
  }
}

class ImmutablePoint {
  final num x;
  final num y;
  final num z;

  // make constructors constant when making immutable objects. This makes
  // object instance compile-time constants.
  const ImmutablePoint(this.x, this.y, this.z);

  static ImmutablePoint origin = const ImmutablePoint(0, 0, 0);
}
