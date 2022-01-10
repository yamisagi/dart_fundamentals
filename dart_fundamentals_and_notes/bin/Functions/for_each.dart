// Koleksiyonlarda kullandığımı klasi for loop yerine,
void main() {
  const myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // ignore: avoid_function_literals_in_foreach_calls
  myList.forEach((element) {
    print(element);
  });
  // Veya 1 Statement var ise Arrow function da kullanabiliriz.
  // ignore: avoid_function_literals_in_foreach_calls
  myList.forEach((x) => print(x * 2));

  // İşin ilginç tarafı forEach kullanırken bizden Method bekliyor ve bu beklediği methoda bir aynı parametre tipine sahip bir method yazabiliriz,
  // Örn,
  myList.forEach(
      print); // Böyle kullanabilmemize açıklama olarak, print() methodu bizden parametre olarak bir obje bekliyor.
  // Aynı şekilde forEach methodu da bizden int dönderecek bir fonksiyon bekliyor
  // İkisi de bir obje olduğu için forEach, print methoduna listedeki objeleri gönderiyor ve
  // myList.forEach((x) => print(x)); demekten hiçbir farkı kalmıyor bu şekilde.
}
