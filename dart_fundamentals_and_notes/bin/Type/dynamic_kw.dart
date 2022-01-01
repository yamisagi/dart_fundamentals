/// Dart Type Safety konusu

void main() {
  /* Normalde Dart ile bir değişken atadiğimizda bu değişkene farklı türden bir değer veremeyiz fakat,
   bazı durumlarda bu tipte bir dönüşüme gerçekten ihtiyacımız olabilir, bu yüzden <<dynamic>> sözcüğünü kullanırız
  */

  dynamic a = "Merhaba";
  // a değişkenini farklı bir türe atayabiliriz artık.
  a = 5;
  print(a);
  // Çıktıda 5 sonucunu alırız ve herhangi bir hata almayız.
  // dynamic sözcüğünü kullandığımızda Dart Compiler'ina dediğimiz şey
  // "Ben ne yaptığımı biliyorum X değişkenini Y türüne ata."
  //********************************************************** */
}
