/// Class oluşturma property ve instance konusu
/// DOCS: https://dart.dev/guides/language/language-tour#classes
//! Bir Sınıf  var olan belli sınıflar ile yapamayacağımız şeyleri ve kendi türümüzü oluşturmak için kullanılır
//? Sınıf oluşturmak için, "class ClassName {}"  şeklinde oluşturulur.
class BankAccount {
  double balance =
      0.0; //! Property yani oluşturduğumuz Class'ın özelliği veya instance variables olarakta geçiyor.
  void deposit(double amount) {
    //! Instance method
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("$balance");
    } else {
      print("Balance wont be negative");
    }
  } //! Instance Method.
}

void main() {
  BankAccount myAccount =
      BankAccount(); // Object-Instance of Class , yani örnek olarak oluşturduğumuz sınıftan bir obje türetme.

  print(myAccount.balance); // Bu şekilde propertylere erişebiliriz.
  // Ve
  myAccount.balance = 100;
  //* Şeklinde oluşturduğumuz objenin propertylerini değiştirebiliriz.
  BankAccount myAccount2 = BankAccount();
  myAccount2.deposit(100);
  print(myAccount2
      .balance); //* Dediğimizde instance methodumuzla 100 birim eklediğimiz objemizin balance property'si 100 olarak çıkar.
  myAccount2.withdraw(50);
}
