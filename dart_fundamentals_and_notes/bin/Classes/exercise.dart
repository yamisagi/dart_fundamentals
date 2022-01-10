/*
void main() {
  final person = {
    'name': 'Andrea',
    'age': 36,
    'height': 1.84
  };
  print("My name is ${person['name']}. I'm ${person['age']} years old, I'm ${person['height']} meters tall.");
}
!!!
Refactor this code by creating a Person class that will contain name, age, height properties.

This class should have a printDescription() method that can be used to print the name, age and height just like in the program above.

Once this is done, create two instances of Person and use them to call the printDescription() method just created.  */



class Person {
  Person({required this.age, required this.height, required this.name});
  final String name;
  final int age;
  final double height;
  void printDescription() {
    print("My name is $name. I'm $age years old, I'm $height meters tall.");
  }
}

void main() {
  Person person = Person(age: 26, height: 179, name: "Eren");

  person.printDescription();
}
