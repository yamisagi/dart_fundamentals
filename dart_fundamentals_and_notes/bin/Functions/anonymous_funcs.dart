// Anonim Fonksiyonlar
/// map,firstWhere vb methodların kullanımı için 
///! https://dart.dev/codelabs/iterables 
void main() {
  // Anonim fonksiyonları şu şekilde tanımlayabiliriz,
  () {}(); // Tipik olarak isimlendirilmemiş argümanlar main methodu içerisinde bir daha çağrılmaya ihtiyaç duyulmayan , belirli görevleri yapıp işlemi sonlanan fonksiyonlardır.
  //? Fonksiyonu çağırmak için bitiş parantezine (); ekleriz.
  //! Diğer şekilde tanımlanma yöntemi ise,

  // ignore: prefer_function_declarations_over_variables
  var name = (String name) => "Hi, dude $name";

  // Burda karıştırılmaması gereken şey ise bu anonim fonksiyonu atama yapmıyoruz, aracı olarak kullanıyoruz,
  // İstersek yukarıdaki gibi bir parametre de isteyebiliyoruz.
  // Yani ,
  print(name("Eren"));
  // Dediğimizde fonksiyonun parametresine "Eren" i gönderiyoruz.
  // Fakat bu çokta tavsiye edilen bir yöntem değil.
}
