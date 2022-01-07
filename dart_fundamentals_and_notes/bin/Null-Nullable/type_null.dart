/// Null ve Nullable - Değersiz(Boş) ve Boş olabilen tipi ve Null-Safety özelliği
/// DOCS: https://dart.dev/null-safety

void main() {
  int a;
  var b = null;
  //? Bu şekilde null olarak atayabiliriz.
  //? Eğer bir null değişkeni sonradan değiştirmek istersek ? işareti kullanarak Dart Compiler'a bunun sonradan atanacağını belirtebiliriz.
  //* Örneğin,
  int?
      c; //* Yani Dart Compiler'ına bunun bunun Null olduğunu ve daha sonra atama yapacağımızı söyledik

  //! Flow Analysis özelliği ile Dart bir kodu Compile ederken bize yardımcı olur.

  String? name;
  // print(name); Bir değişken atanmadan önce null olduğu için bize Dart hata veriyor.
  // Fakat ,
  if (name == null) {
    name = "Eren";
  } else {
    print("Hello $name");
  }
  // Gibi bir logic kurup atama yapacağımız anladığı için Flow Analysis ile bize daha atama yapmasak bile hata vermez.

  //! Ternary  ve If-Else statements ile Definite Assignment
  int x = 10;
  int z;
  // print(z); // Hata verir.
  if (x < 10) {
    z = 1;
  } else {
    z = -1;
  }
  print(
      z); // Yukarıdaki if else statement ile Definite Assignment işlemi yaptık,
  // Yani z başta hata veriyor olsa da Flow Analysis sayesinde kesinlikle z ye bir değer atanacağını bildiği için bize hata vermedi.
  //  int z = x <10 ? 1 : -1 ; //* Yukarıdaki işlemin aynısını Ternary ile yaptık.
}
