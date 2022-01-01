void main() {
  String first_name = "Eren"; // snake_case
  String lastName =
      "Candan"; // camelCase - Dart bize bu tipi kullanmamızı önerir.

  // String Birleştirmenin iki yolu var
  String fullName = "My name is " + first_name + " " + lastName;
  print(fullName);

  // Ya da

  String full_name = "My name is $first_name $lastName";

  print(full_name);

  // Raw String ve String Escaping

  print(
      'Hello I\'am Eren'); // Burda ' \ ' ile ' işaretinin bir String olarak algılanmasını sağlıyoruz.

  print(
      r"C:\Windows\System32"); // Normalde print("C:\\Windows\\System32") şeklinde kaçış ifadesi kullanmamız lazımdı
  // Raw String kullanımı ile aynı işlemi yapmış olduk.

  // ÖNEMLİ
  // Bir değişken declare edildikten sonra tekrardan assign edilebilir, ve yeninden declare edilmesine gerek yok,
  // Örneğin ;
  String name = "Eren"; // Declare ve Initialize edildi,
  print(name);
  name = name
      .toUpperCase(); // Tekrardan Assign edildi ve declare edilmesine gerek kalmadı.
  print(name);
  // DAHA FAZLA BİLGİ İÇİN ''' https://dart.dev/guides/libraries/library-tour#strings-and-regular-expressions '''
}
