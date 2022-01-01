
/// ! ENUM oluşturma

// Enumerete işlemi {} içerisinde virgülle ayrılan elemanları numaralar.
// Örneğin;

enum Medal { gold, silver, bronze, noMedal }
void main() {
  const medal = Medal.gold;

  switch (medal) {
    case Medal.gold:
      print("Gold!");
      break;
    case Medal.silver:
      print("Silver");
      break;
    case Medal.bronze:
      print("Bronze");
      break;
    case Medal.noMedal:
      print("No Medal");
      break;
  }
  // Gibi bir yapıda case1 case2 gibi kullanmak yerine kodumuzu daha okunabilir mantıklı şekilde düzenleyebiliriz.
}
