/**
 * Example of using classes, mix-ins, and interfaces in Dart
 */

part of dart_examples;

// serializable interface
//abstract class Serializable {
//  String toJson();
//}

// serializable mixin
abstract class Serializable {
  Map<String, int> _obj;
  String toJson() {
    return _obj.toString();
  }
}

class Point extends Object with Serializable {
  num _x;
  num _y;
  num _z;

  static final Map<String, Point> _cache = <String, Point>{};

  Point._internal(this._x, this._y, this._z) {
    this._obj['x'] = _x;
    this._obj['y'] = _y;
    this._obj['z'] = _z;
  }

  // redirecting constructors
  Point.alongXAxis(num x) : this._internal(x, 0, 0);

  Point.alongYAxis(num y) : this._internal(0, y, 0);

  Point.alongZAxis(num z) : this._internal(0, 0, z);

  Point.fromJson(Map data)
      : _x = data['x'],
        _y = data['y'],
        _z = data['z'] {
    this._obj = data;
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
