/// SET Yapısı
/// DOCS: https://api.dart.dev/stable/2.14.4/dart-core/Set-class.html
void main() {
  // Setler de listeler gibidir. Fakat aralarındaki en önemli fark
  // Listelerin aksine Set'ler Unique itemler barındırır.
  // Yani 1 den fazla aynı elemandan bulundurmazlar.
  var countries = {"Usa", "Italy", "Russia"};
  var countries2 = {"Usa", "China", "Belgium"};
  //! Setlerde bir elemente ulaşmak için listelerdeki gibi listname[index] şeklinde kullanamayız.
  //! Bunu yerine,
  print(countries2.elementAt(2));
  // Şeklinde yazarız.
  
}
