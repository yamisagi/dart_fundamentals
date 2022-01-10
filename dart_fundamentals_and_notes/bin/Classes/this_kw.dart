/// Class'larda this kelimesi ve constructor(kurucular)
// Yapılandırıcıların (constructor) görevi oluşturulan nesneyi ilk kullanıma hazırlamasıdır.
// ignore_for_file: prefer_initializing_formals

class BankAccount {
  // Bu constructorlar propertylerden önce oluşturulmalıdır. Ve Class ile aynı ada sahiptir.
  // Çok kullanılmııyor olsa da bilgi olsun diye Initializer List denilen bir yöntemle de Constructoru oluşturabiliriz.
  /*
    BankAccount(String? name, int? age,double? balance) : this.name=name, this.age=age,this.balance=balance;

  */

  BankAccount(String? name, int? age, this.balance) {
    accountHolderName = name; //!
    /*! Neyi neye eşitlediğimizi görmek için property ve constructor parametresinin isimlerini farklı yazdım
                    Bu kurucu methodda propertymize parametre olarak aldığımız değeri atıyoruz.
                    Genellikler sınıflarda parametre ve property isimleri aynı olur.
                    Bu yüzden this. keywordu hangisinin hangisi olduğu hakkında Class'a referans olur.*/
    //!
    this.age =
        age; //! Bu şekilde Propertymiz olan Age'i parametre olan Age atamış olduk.
    //!!!! Diğer bir yandan initializer yöntemi ile bunlara gerek kalmadan da Constructorumuza Parametre olarak direk Propertylerimizi atabiliriz.
  }

  String? accountHolderName;
  int? age;
  double balance;
}

void main() {
  var person = BankAccount("Eren", 25, 0.0);
  print(person.accountHolderName);
  print(person.age);
  print(person.balance);
}
