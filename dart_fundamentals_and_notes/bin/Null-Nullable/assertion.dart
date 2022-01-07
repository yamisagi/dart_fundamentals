/// NON-NULLABLE (!)
void main() {
  //! Eğer bir değişkeni veya bir işlemin sonunda null dönmeyeceğini bildiğimiz ve emin olduğumuz bir atama yapacaksak bunu DART Compiler'a (!) işareti ile belirtebiliriz.
  // * Örneğin;
  int a = 50;
  int? maybeValue;

  if (a > 30) {
    maybeValue = a;
  }
  // int value = maybeValue; 

  //! Buradaki durumun özeti, bir null değişkenini başka bir değişkene normalde atayamayız. Dart Null-Safety bize izin vermez.
  //! Fakat (!) işareti ile bunun "Dart kesinlikle atamayaca çalıştığım değer NULL olmayacak." şeklinde söz vermiş oluyoruz.
  //! Bu şekilde Compile-Time da yani Kod Compile edilirken bir hata vermez ve Kod çalışmaya devam eder.
  //! Ama eğer olur da Null değer dönerse ve o değişkene atanmaya çalışılırsa (_CastError (Null check operator used on a null value)) error fırlatır.

  int value = maybeValue!;
  print(value);
}
