///! Class'lara ait olan method ve propertylerdir,
/// Örn;
class MyClass {
  static String nameOfClass = "Nulls"; //! Static variable.
  static int numberOfPerson = 99;
  static List<String> classMates = [];
  static List<String> definePerson(List name) { //! Static method.
    name.forEach((element) {
      classMates.add(element);
    });
    return classMates;
  }
}

void main() {
  print(MyClass
      .nameOfClass); // Şekilde görüldüğü gibi bir instance kullanarak değil Direkt olarak Class ismi ile kullandığımız propertyler.
  List names = ["A", "B", "C"];
  print(MyClass.definePerson(names)); // Burda da direkt olarak sınıf ismi ile methodu çağırdık.
}
