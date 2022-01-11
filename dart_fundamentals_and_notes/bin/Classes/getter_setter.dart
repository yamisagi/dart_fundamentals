/// Örnekle Class içerisinde Getter ve Setter kullanımı.

class Temperature {
  //Temperature(this.celcius);
  // Bu şekilde bir constructor oluşturduğumuzda C cinsinden Farenheit mi Yoksa Celcius cinsinden mi olup olmadığı belli olmuyor
  // Bu Yüzden named constructor kullanabiliriz.
  Temperature.celcius(this.celcius);
  Temperature.farenheit(double farenheit) : celcius = (farenheit - 32) / 1.8;
  //! Bu şekilde iki türde de isimlendirilmiş kurucu oluşturduk

  double celcius; //! Stored Variable
  // double farenheit() => celcius * 1.8 + 32;
  // Bunun yerine getter ile
  double get getterFarenheit =>
      celcius * 1.8 +
      32; //! Bu şekilde bir kullanım "Computed Variable" olarakta geçer.
  //! Bir Getter tanımladığımızda aynı fonksiyonlar gibi bir body tanımlamalıyız aksi halde hata verir.
  // Veya bir Setter ile Celcius kurucusuyla üretilmiş bir objeyi farenheit türünden atama yapabiliriz.
  set setter(double farenheit) => celcius = (farenheit - 32) / 1.8;
}

void main() {
  Temperature celciusType = Temperature.celcius(10);
  Temperature farenheitType = Temperature.farenheit(10);
  // İki türden de objeleri oluşturduk
  // Fakat
  celciusType.celcius = 100;
  // Şeklinde celcius olarak atama yapabiliyoruz fakat fareinheit şeklinde bir propertymiz yok.
  print(farenheitType
      .celcius); // Yazdırdığımızda bize farenheit kurucusundan üretildiği için bunu o cinsten yazdırıyor
  // Fakat çokta mantıklı bir kullanım değil, bu yüzden ,
  //! deg2.farenheit şeklinde yazmak daha uygun ve anlaşılır
  // Bunu da bir method yazmak yerine getter kullanarak oluşturabiliriz. (12. Satır)
  print(farenheitType.getterFarenheit); //* Getter
  // Veya celcius kurucusundan kurulan bir instancenin farenheit cinsinden değerini de görebiliriz.
  print(celciusType.getterFarenheit); //* Getter
  // Setter ile celcius kurucusuyla üretilmiş objeye farenheit cinsinden değer atama
  celciusType.setter =
      90; //* Setter //! Burda Setter'a "90" değeri parametre olarak gidiyor.
  print(celciusType.getterFarenheit); //* Getter
  print(celciusType.celcius);
  //! Bu şekilde görüldüğü gibi farenheit türündeki değeri Setter ile atadığımızda 90 değeri atanıyor.
  //! Fakat .celcius türünde yazdırdığımızda dönüşmüş şekilde bize çıktı veriyor.
}
