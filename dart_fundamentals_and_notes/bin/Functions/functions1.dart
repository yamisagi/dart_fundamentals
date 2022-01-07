/// Bu Bölümde Fonksiyonlara Genel Bakış Atacağız.
/// DOCS: https://dart.dev/guides/language/language-tour#functions

void main() {
  myFunc(); // ile call function işlemi yaparız.
  //! Parantezler burada fonksiyonumuzu çağırmamızı sağlar, aksi halde fonsiyon çalıştırılmaz.
  print(myFunc
      .runtimeType); // ile tipini yazdırdığımızda karşımıza void dönderen bir fonsiyon olduğu yazar.
}

void myFunc() {
  String addHi = "Hello";
  print("It's a func");
  print("Welcome $addHi");
}
// Burda basit bir fonksiyon tanımladık.
//! type funcName(args){}
//! type fonksiyonun döndereceği değer,
//! funcName --Fonksiyonun adı
//! (args) ise fonksiyona verebileceğimiz parametreleri temsil eder.


