import 'dart:math';

///! Soyut Sınıflar olarak geçen Abstract Classların kullanımı
abstract class Shape {
  double get area;
}

// Soyut Sınıflar bu şekilde abstract keyword kullanılarak oluşturulur
class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
  //! Burada oluşturduğumuz Square adlı class Shape sınıfından türetilmiş
  //! Ve onun özelliklerini taşıyan ve kullanabilen bir sınıftır. //(32)

}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;
  @override
  double get area => pi * radius * radius;
}

void main() {
  //! final shape = Shape(); ---Burada görüldüğü gibi Abstract Classlardan bir instance oluşturamayız
  //? Peki Bu sınıflar ne işe yarar.
  //* Abstract sınıflar içerik bakımından kendinden türetilen sınıflara kullanılacak özellikleri tutar.

  //!(16) Bu yüzden Türetilmiş sınıftan bir instance oluşturup kullanabiliriz.
  final square = Square(10);
  print(square
      .area); // Burdaki gibi Türetilmiş olan sınıftan Abstract methoduna ulaşabildikç
  final circle = Circle(20);
  print(circle.area.toStringAsFixed(2));

  ///!!!!!! Tıpk Yukarıdaki iki adet extend edilmiş iki ayrı sınıfa bakarsak
  ///!!!!!! Bir adet Abstract sınıftan türetilmiş sınıf var ve area adında bir getter propertysi var.
  ///!!!!!! Extend edilmiş sınıflar da kendi içinde bu propertyi override ederek kendine göre kullanıyorlar.


}
