/// Class'ların kurucu methodlarının türleri.
/// default,named ve factory constructors.

// Default Constructor gibi Class ile aynı adı alır fakat
// ClassName.namedconst(); şeklinde oluşturulur.
//? Örneğin
class BankAccount {
  BankAccount(this.name, this.age, this.balance);
  BankAccount.locationBased(this.age, this.balance, this.name)
      : location = "TR";
  final String name;
  int age;
  double balance;
  late String location;
}

void main() {
  // ignore: unused_local_variable
  BankAccount person = BankAccount("Eren", 26, 0.0);
  BankAccount person2 = BankAccount.locationBased(
    27,
    100.0,
    "Eren",
  );
  person2.location = "TR";
  print(person2.location);
}

