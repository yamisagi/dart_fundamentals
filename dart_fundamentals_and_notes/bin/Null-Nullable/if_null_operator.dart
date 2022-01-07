//! (??) IF-Null operator.
// Bu operator ile if == null veya Ternary Operatorler vb logic kurmadan kısa yoldan bir FallBack olan if-null opertörüdür
// Örneğin;
void main() {
  int? maybeVar;
  int non = maybeVar == null ? 0 : 1; // Gibi bir kullanım yerine
//**************************** */
  int nonNull = maybeVar ?? 0; //! Olarak kullanabiliriz.
//! Bu kullanım  Assertion(!) kullanımına çok benziyor.
//! Fakat burada onun aksine bir FallBack - Yani bir default değer atamış oluyoruz.

//? Ne zaman (!) Ne zaman (?? *) kullanmamız gerektiğine gelecek olursak
//* Assertion bir değişkenin kesinlikle Null olmayacağını bildiğimizde.
//* If-null ise ihtimalen bir FallBack oluşturmak istediğimizde.

//! Augment Assignment If-Null Operator (??=) kullanımı
// Yukarıdakine benzer bir örnek ile açıklayacak olursak;
  String? name;
  String surname = "Candan";
  name ??= "Eren"; //! Bu kısımda if-null operatörü gibi EĞER name değişkeni null olacak olursa default bir değer atamış olduk.

}
