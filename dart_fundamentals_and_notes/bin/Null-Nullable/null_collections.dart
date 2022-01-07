//! Listeler gibi koleksiyonlarda Null

//? Bir listede null değer var ise bunu nasıl ele alırız
void main() {
  const cities = [
    "Nyc",
    "London",
    "Pekin",
    null
  ]; // Oluşturduğumuz listemizde bir null değeri var ve bunu örneğin daha sonra ele almak istiyoruz.
  // Ve bu listeyi for döngüsüyle gezmek istiyoruz;
  for (var city in cities) {
    print(city); // Buratya kadar bir problem yok Null değer de yazıldı.
  }

  const newCities = <String?>[
    "London",
    "Paris",
    "Rome",
    null
  ]; //! Bu listede ise sadece String ifadelerin olmasını istiyoruz. Ama içerisinde Null değerler olabilir 
      //! Bu yüzden <String> Type Anotationu belirtirken (?) işaretini de koymalıyız.
  //? Peki bu listede String türüne ait bir methodu çalıştırmak istediğimizde bunu nasıl ele alırız.
  for (var myCity in newCities) {
    // print(myCity.toUpperCase()); //! Bu kısımda Flow Analysis özelliği tekrardan devreye giriyor ve bize
    
    //* "Bak kardeş içinde Null değer olabilir !" diyor.
    
    //! Bu durumda  ya "Null Aware"  olarak (?.) işaretini kullanırız.
    
    //! Buna "Conditional Access Operator(?.)" de denir.
    
    //* Bu şekilde methodlara "Sadece bu methodu bu değişken Null değilse çağır." demiş oluyoruz.

    print(myCity?.toUpperCase());

    // Bu durumda null değer gelse bile  önemsemez.

    //! Ya da if else ile bir logic kurup kontrol ederek Flow Analysis'in Dart'ı mutlu etmesini sağlayabiliriz.

    if (myCity != null) {
      print(myCity.toString());
    }
  }
}
