/// MAP yapısı -- Diğer dillerde Dictionary olarakta geçer.
/// DOCS: https://api.dart.dev/stable/2.15.1/dart-core/Map-class.html
void main() {
  // Map şu şekilde tanımlanır
  var myMap = {"name": "Eren", "age": 36, "height": 179.5};
  // Tıpkı Set ve List yapısında oluduğu gibi Maplerin de key, ve value değerlerine Type-Anotation yapabiliriz.
  // Örneğin ;
  Map<dynamic, dynamic> myMap2 = {1: "Eren", 2: "Yamisagi", 3: "Map"};
  //    |         |
  //(Key Type),(Value Type)
  // Diğer yandan şu şekilde de yapabiliriz.
  var myMap3 = <String, int>{"Eren": 26, "Rü": 24};
  //! Köşeli parantezler ile veri tiplerini belirtmemize illaki gerek yok fakat belirtmemiz daha güvenli kod yazmamıza yardımcı olur.

  // Öte yandan Map yapılarının itemlerine de Listelerdeki gibi erişebiliriz.
  print(myMap["name"]);
  // Gibi
  //! Ve Önemli olarak belirli bir itemin türüne ait methodlara erişebilmek için "as" opertorü kullanabiliriz.
  //! Örneğin;
  var name = myMap["name"];
  //! Şeklinde bir atama yaptığımızda name String gibi davranıyor fakat Dart'ın bunu anlaması ve o sınıfın methodlarını kullanıbilmesi için "as" opertorü kullanmamız gerekir.
  //? name. dediğimizde 4 adet method çıkıyor şimdilik.
  name as String;
  //! Şeklinde tanımlama yaptığımızda Dart bize artık String sınıfının methodlarına erişebilmemizi sağladı.

  //? Map yapılarında Key üzerinden Değerlere ulaşabiliyoruz fakat bir değer üzerinden keylere ulaşabilir miyiz ?
  //* Cevap olarak evet;
  var key = myMap3.keys.firstWhere(
    (k) => myMap3[k] == 24,
    orElse: () => "Not Inside",
  );
  print(key);
  //!!!! Kısaca böyle bir getter ile  myMap3 Mapinin Keylerine erişip -24- değeri herhangi bir Key'e atanmış mı bakıyoruz,
  //!!!! Ve orElse()=> ile eğer ki tanımlı değilse ona göre bir mesaj yazdırıyoruz, eğer tanımlıysa zaten o Key'in adını yazdırmış oluyoruz.
}
