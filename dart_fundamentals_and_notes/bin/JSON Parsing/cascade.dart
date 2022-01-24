// ignore_for_file: unused_local_variable

import '../Classes/ex2.dart';

///! Cascade ile işlem yapma
class CounterX {
  List<Point> _points = [];
  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point point) {
    _points.add(point);
  }
}

void main() {
  final path = CounterX(); // Oluşturduğumuz classtan bir instance ürettik,

  path.moveTo(Point(0, 2));
  path.lineTo(Point(2, 0));
  path.lineTo(Point(2, 2));
  path.lineTo(Point(0, 2));
  path.lineTo(Point(0, 0));
  //! Gibi bir kullanım yerine basitçe,

  final path2 = CounterX()
  ..moveTo(Point(0, 2))
  ..lineTo(Point(2, 0))
  ..lineTo(Point(2, 2))
  ..lineTo(Point(0, 2))
  ..lineTo(Point(0, 0));

  //! Cascade operator ile daha kolay şekilde aynı işlemi yapabiliriz.
  
}
