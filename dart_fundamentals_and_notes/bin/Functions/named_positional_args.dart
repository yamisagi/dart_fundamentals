// İsimlendirilmiş ve Konumlandırılmış Argümanlar

// Bir fonsiyon tanımladığımızda içerisin 1 veya 2 parametre istediğimizde konumlandırılmış argümanları kullanmak problem olmayacaktır,
// Fakat 4, 5 veya daha fazla parametre istendiğinde
//? void name(arg1,arg2) =>; (Positional Arg.)
// Gibi kullanımlar kafa karıştırıcı olabilir.
// Bu yüzden isimlendirilmiş parametreler kullanmak daha mantıklı olacaktır.
//
void main() {
  writeNames(name1: "Yami", name2: "Sagi");
  readName(name1: "Eren", howToSpell: "Candan");
}

// void writeNames ({String name1 ,String name2}) => print("$name1 and $name2");
// //! Null-Safetyden önce böyle bir kullanım yapabiliyorduk
//! İsimlendirilmiş argümanlarda fakat Null-Safety den sonra yapamıyoruz. Bunun nedeni İsimlendirilmiş argümanların default olarak null değerine sahip olmasıdır.

//* Bunun yerine ;
void writeNames({String name1 = "Eren", String name2 = "Yami"}) => print(
    "$name1 and $name2"); // Şeklinde default olarak bir değer atayıp kullanabiliriz.

// İsimlendirilmiş parametrelerde Null meselesini 3 şekilde ele alabiliriz.
// ( ? ) nullable olarak belirtebilir, default value verebilir veya "required" kullanabiliriz.
// Duruma göre hangi yöntemi kullanacağımızı seçebiliriz.
void readName({required String name1, required String howToSpell}) {
  List<String> converted = howToSpell.split("");
  List<String> empty = [];
  empty.addAll(converted);
  print("$name1 Welcome  ${empty.toString()}");
}
