/// Koleksiyon tiplerinde kod yazımının kalitesini artıracak yollar ve özellikler.
///? DOCS: https://medium.com/flutter-community/whats-new-in-dart-2-3-1a7050e2408d

void main() {
  // Koleksiyonlarda kullanabileceğimiz özellikler,
  //! 1- Collection-For,

  var myList = ["Eren", "Yeager"];
  // Bu listeyi liste içerisinde for döngüsü kullanarak diğer listeye ekleyebiliriz.
  var updatedList = [
    "Mikasa",
    "Levi",
    for (var i in myList) i,
  ];
  print(updatedList);

  //! 2- Collection-If,
  // Aşağıdaki gibi bir koleksiyon içerisinde if kullanarak bir elemanı true ya da false döndermesine göre ekleyebiliriz.
  //
  var isAsian = true;
  var countries = [
    "China",
    "Urdu",
    "Japan",
    "Korea",
    if (isAsian) "Uygurs",
  ];
  print(countries);

  //! 3- Spread,
  //? (...) kullanarak addAll methodunu kullanmadan eleman ekleyebiliriz.

  var liste1 = ["USA", "UK"];
  var liste2 = ["Russia", "China"];
  var liste3 = ["Italy", "Germany"];
  var allCountries = [
    ...liste1,
    ...liste2,
    if (true) ...liste3, //! araya bir logic de koyabiliriz.
  ];
  print(allCountries);

  //! Bu özellikleri örnekteki gibi harmanlayabiliriz ve diğer koleksiyon yapıları ile de kullanabiliriz.

  //* Örneğin bir Map yapısında şu şekilde kullanabiliriz

  var rating = [4.5, 5, 5];
  var restaurant = {
    "name": "Alibaba",
    "cuisine": "Arab",
    if (rating.length > 3) "rating": rating,
    //! Veya Spread ile birden fazla K:W ekleyebiliriz

    ...{"Popular": true, "Talented": false}

    //! Çok önemli kısım Map'lerde   ...{"K":"W"} şeklinde kullanım unutulmamalı.
  };
  print(restaurant); 
}
