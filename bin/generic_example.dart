class Point<T> {
  T x, y, z;
  
  Point(this.x, this.y, this.z);
  
  operator +(Point<T> other) => new Point<T>(this.x + other.x, this.y + other.y, this.z + other.z);
  
  operator ==(Point<T> other) {
    return (this.x == other.x) && (this.y == other.y) && (this.z == other.z);
  }
  
  String toString() {
    return '(${this.x}, ${this.y}, ${this.z})';
  }
}

void main() {
  Point<int> a = new Point<int>(5,5,5);
  Point<double> b = new Point<double>(5.0,5.0,5.0);
  Point<int> c = new Point<int>(5,5,5);

  assert(a == c);
  
  var d = a + c;
  print(d);
}
