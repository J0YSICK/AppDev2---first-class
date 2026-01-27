import 'dart:math' as m;

abstract class Shape{
  perimeter();
  area();
}

class Circle extends Shape{
  var radius = 5;

  @override
  area() {
    print(m.pi * radius * radius);
  }

  @override
  perimeter() {
    print(2*m.pi*radius);
  }
}

class Square extends Shape{
  var side = 8;

  @override
  area() {
    print(side * side);
  }

  @override
  perimeter() {
    print(4*side);
  }
}

void main(){
  Shape s = Circle();
  s.area();
  s.perimeter();

  s = Square();
  s.area();
  s.perimeter();
}