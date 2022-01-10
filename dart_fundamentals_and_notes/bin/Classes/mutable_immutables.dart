/// Class propertylerinde değiştirilebilir ve değiştirilemez olarak kullanmaç
// Önceki class örneklerinde olduğu gibi bir bankaccount class ı oluşturup değiştirilebilir ve değiştirilemez özellikleri ayarlayacağız.
class BankAccount {
  BankAccount(
    this.name,
    this.age,
    this.balance,
  );
  final String? name;
  int? age;
  double? balance;
  /* Property ve Kurucu methodumuzu hazır,
  Instance methodla değiştirilebilir propertyler obje oluşturulunca
  age ve balance olmalı
  bu yüzden name propertysine final keyword ekleyip immutable yani değiştirilemez demeliyiz. */
}
void main(){
  BankAccount person = BankAccount("Eren", 25, 1000);
  // Class'ımızdan bir obje oluşturduk ve özelliklerini yazdık,
  // Daha sonrasında Immutable olarak  belirlediğimiz özellik haricinde diğer özellikleri değiştirebiliriz.
  //! Fakat name özelliğini değiştiremeyiz
  //! Mutable ve Immutable kullanımı ileriki projelerimizde oluşturacağımız Class'larımızın yapısına göre bizim belirleyeceğimiz özelliklerdir.  
}