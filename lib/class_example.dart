/**
 * Example of using classes
 */

part of dart_examples;

class Point2D {
  num _x;
  num _y;

  static final Map<String, Point2D> _cache = <String, Point2D>{};

  Point2D._internal(this._x, this._y);

  // redirecting constructors
  Point2D.alongXAxis(num x) : this._internal(x, 0);

  Point2D.alongYAxis(num y) : this._internal(0, y);

  Point2D.fromJson(Map data)
      : _x = data['x'],
        _y = data['y'] {
  }

  Point2D(num x, num y) : this._internal(x, y);

  // getters and setters
  num get X => _x;
  set X(num value) => _x = value;

  num get Y => _y;
  set Y(num value) => _y = value;

  operator +(Point2D rhs) => new Point2D(X + rhs.X, Y + rhs.Y);

  num distance(Point2D dest) {
    var dx = X - dest.X;
    var dy = Y - dest.Y;
    return sqrt(dx * dx + dy * dy);
  }
  
  Map<String, Object> toMap() {
    Map<String, num> data = <String, num> {
      "x": this.X,
      "y": this.Y,
    };
    
    return data;
  }
}

// example of subclass
class Point3D extends Point2D {
  num _z;
  
  Point3D(num x, num y, this._z) : super(x, y);
  
  Point3D.alongXAxis(num x) : this(x, 0, 0);

  Point3D.alongYAxis(num y) : this(0, y, 0);

  Point3D.alongZAxis(num z) : this(0, 0, z);
  
  num get Z => _z;
  set Z(num value) => _z = value;
  
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
